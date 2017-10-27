
# ゲーム開始
sub startgame {
    $x = int(rand(10));
    for ($i = 0; $i < 3; $i++) {
        print "$x ";
        @list[$i] = $x;
        $x = int(rand(10));
    }
}

# 結果判定
sub checkresult{
    $a = $_[0];
    $b = $_[1];
    $c = $_[2];

    if ( ($a == $b) and ($b == $c) ) {
        return "B";
    } elsif ( ($a == $b) or ($b == $c) or ($a == $c) ) {
        return "R";
    } else {
        return "n";
    }
}

# 結果表示
sub printresult {
    if ($r eq "B") {
        print "BINGO !!\n";
    } elsif ($r eq "R") {
        print "REACH !\n";
    } else {
        print "boo...\n";
    }
}

# ゲーム終了、試行回数の表示
sub endgame {
    print "you played $playtime times";
}

# 3つ揃うまでスロットを回し続ける
# BINGO !!が出たらループを抜ける
until ($r eq "B") {
    &startgame;
    $r = &checkresult(@list);
    &printresult($r);
    $playtime++;
}

# 終了
&endgame;
