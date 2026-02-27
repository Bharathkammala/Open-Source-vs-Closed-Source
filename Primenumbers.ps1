
$n = Read-Host "Enter number"

# Convert to integer
$n = [int]$n

for ($i = 2; $i -le $n; $i++) {

    $isPrime = $true

    if ($i -gt 2 -and $i % 2 -eq 0) {
        $isPrime = $false
    }
    else {
        for ($j = 3; $j * $j -le $i; $j += 2) {
            if ($i % $j -eq 0) {
                $isPrime = $false
                break
            }
        }
    }

    if ($i -eq 2 -or $isPrime) {
        Write-Host -NoNewline "$i "
    }
}