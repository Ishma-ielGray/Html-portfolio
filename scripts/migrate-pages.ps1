$ErrorActionPreference = 'Stop'
$root = (Get-Location).Path
$pages = Join-Path $root 'src/pages'
New-Item -ItemType Directory -Force -Path $pages | Out-Null

$sourcePages = @(
    @{ File = 'Portfolio.html'; Component = 'HomePage.vue' },
    @{ File = 'My Work.html'; Component = 'MyWorkPage.vue' },
    @{ File = 'About Me.html'; Component = 'AboutPage.vue' },
    @{ File = 'Contact Me.html'; Component = 'ContactPage.vue' }
)

foreach ($page in $sourcePages) {
    $html = Get-Content -LiteralPath (Join-Path $root $page.File) -Raw -Encoding UTF8
    $styleMatch = [regex]::Match($html, '(?is)<style[^>]*>(.*?)</style>')
    $bodyMatch = [regex]::Match($html, '(?is)<body[^>]*>(.*?)</body>')
    if (-not $styleMatch.Success -or -not $bodyMatch.Success) { throw "Could not parse $($page.File)" }

    $css = $styleMatch.Groups[1].Value -replace '(?i)\bbody(?=\s*\{)', ':global(body)'
    $template = $bodyMatch.Groups[1].Value
    $template = [regex]::Replace($template, '(?is)<header\b[^>]*>.*?</header>', '<SiteHeader />')
    $template = [regex]::Replace($template, '(?is)<script\b[^>]*>.*?</script>', '')
    $template = [regex]::Replace($template, '(?is)<!--.*?-->', '')
    $template = $template.Replace('Portfolio.html', '/').Replace('My Work.html', '/work').Replace('About Me.html', '/about').Replace('Contact Me.html', '/contact')
    $template = [regex]::Replace($template, '(?i)(src\s*=\s*["''])(?!https?://|/)([^"'']+)(["''])', '$1/$2$3')
    $template = $template.Replace(([string][char]0x00C2 + [char]0x00A9), [string][char]0x00A9)

    $component = @"
<script setup>
import SiteHeader from '../components/SiteHeader.vue'
</script>

<template>
$template
</template>

<style scoped>
$css
</style>
"@
    Set-Content -LiteralPath (Join-Path $pages $page.Component) -Value $component -Encoding UTF8
}

$public = Join-Path $root 'public'
New-Item -ItemType Directory -Force -Path $public | Out-Null
Copy-Item -LiteralPath (Join-Path $root 'js-emblem-orange-shield-and-white-text-vector.jpg') -Destination $public -Force
foreach ($folder in @('About Me', 'VS code', 'Visual Studio', 'HTML ASSIGNMENT', 'gallery.html')) {
    $source = Join-Path $root $folder
    if (Test-Path -LiteralPath $source) {
        Copy-Item -LiteralPath $source -Destination $public -Recurse -Force
    }
}
Write-Output 'Converted four pages and copied their local media to public/.'
