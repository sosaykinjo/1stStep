
# �Q�[���J�n
sub startgame {
    $x = int(rand(10));
    for ($i = 0; $i < 3; $i++) {
        print "$x ";
        @list[$i] = $x;
        $x = int(rand(10));
    }
}

# ���ʔ���
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

# ���ʕ\��
sub printresult {
    if ($r eq "B") {
        print "BINGO !!\n";
    } elsif ($r eq "R") {
        print "REACH !\n";
    } else {
        print "boo...\n";
    }
}

# �Q�[���I���A���s�񐔂̕\��
sub endgame {
    print "you played $playtime times";
}

# 3�����܂ŃX���b�g���񂵑�����
# BINGO !!���o���烋�[�v�𔲂���
until ($r eq "B") {
    &startgame;
    $r = &checkresult(@list);
    &printresult($r);
    $playtime++;
}

# �I��
&endgame;
