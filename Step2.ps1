$bytes = [System.Text.Encoding]::Unicode.GetBytes($ps)
$ms = New-Object IO.MemoryStream
$ds = New-Object IO.Compression.DeflateStream($ms, [IO.Compression.CompressionMode]::Compress)
$ds.Write($bytes, 0, $bytes.Length)
$ds.Close()
[Convert]::ToBase64String($ms.ToArray())
