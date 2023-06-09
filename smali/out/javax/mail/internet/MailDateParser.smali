.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .param p1, "orig"    # [C

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 462
    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 463
    return-void
.end method


# virtual methods
.method getIndex()I
    .registers 2

    .prologue
    .line 900
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0
.end method

.method public parseAlphaTimeZone()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x74

    const/16 v7, 0x54

    .line 820
    const/4 v3, 0x0

    .line 821
    .local v3, "result":I
    const/4 v2, 0x0

    .line 825
    .local v2, "foundCommon":Z
    :try_start_6
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_cc

    .line 872
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_1d} :catch_1d

    .line 874
    :catch_1d
    move-exception v1

    .line 875
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 828
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :sswitch_28
    :try_start_28
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5
    :try_end_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_28 .. :try_end_32} :catch_1d

    .line 829
    .local v0, "curr":C
    if-eq v0, v7, :cond_36

    if-ne v0, v8, :cond_63

    .line 830
    :cond_36
    const/4 v3, 0x0

    .line 878
    .end local v0    # "curr":C
    :goto_37
    if-eqz v2, :cond_c1

    .line 879
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 880
    .restart local v0    # "curr":C
    const/16 v4, 0x53

    if-eq v0, v4, :cond_4b

    const/16 v4, 0x73

    if-ne v0, v4, :cond_a9

    .line 881
    :cond_4b
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 882
    if-eq v0, v7, :cond_c1

    if-eq v0, v8, :cond_c1

    .line 883
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 833
    :cond_63
    :try_start_63
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 837
    .end local v0    # "curr":C
    :sswitch_6d
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 838
    .restart local v0    # "curr":C
    const/16 v4, 0x4d

    if-eq v0, v4, :cond_7f

    const/16 v4, 0x6d

    if-ne v0, v4, :cond_8f

    .line 839
    :cond_7f
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 840
    if-eq v0, v7, :cond_8d

    if-ne v0, v8, :cond_8f

    .line 841
    :cond_8d
    const/4 v3, 0x0

    .line 842
    goto :goto_37

    .line 845
    :cond_8f
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_99
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_63 .. :try_end_99} :catch_1d

    .line 849
    .end local v0    # "curr":C
    :sswitch_99
    const/16 v3, 0x12c

    .line 850
    const/4 v2, 0x1

    .line 851
    goto :goto_37

    .line 855
    :sswitch_9d
    const/16 v3, 0x168

    .line 856
    const/4 v2, 0x1

    .line 857
    goto :goto_37

    .line 861
    :sswitch_a1
    const/16 v3, 0x1a4

    .line 862
    const/4 v2, 0x1

    .line 863
    goto :goto_37

    .line 867
    :sswitch_a5
    const/16 v3, 0x1e0

    .line 868
    const/4 v2, 0x1

    .line 869
    goto :goto_37

    .line 885
    .restart local v0    # "curr":C
    :cond_a9
    const/16 v4, 0x44

    if-eq v0, v4, :cond_b1

    const/16 v4, 0x64

    if-ne v0, v4, :cond_c1

    .line 886
    :cond_b1
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 887
    if-eq v0, v7, :cond_bf

    if-eq v0, v8, :cond_c2

    .line 889
    :cond_bf
    add-int/lit8 v3, v3, -0x3c

    .line 896
    .end local v0    # "curr":C
    :cond_c1
    return v3

    .line 891
    .restart local v0    # "curr":C
    :cond_c2
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Alpha TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 825
    :sswitch_data_cc
    .sparse-switch
        0x43 -> :sswitch_9d
        0x45 -> :sswitch_99
        0x47 -> :sswitch_6d
        0x4d -> :sswitch_a1
        0x50 -> :sswitch_a5
        0x55 -> :sswitch_28
        0x63 -> :sswitch_9d
        0x65 -> :sswitch_99
        0x67 -> :sswitch_6d
        0x6d -> :sswitch_a1
        0x70 -> :sswitch_a5
        0x75 -> :sswitch_28
    .end sparse-switch
.end method

.method public parseMonth()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x4e

    const/16 v6, 0x43

    const/16 v5, 0x65

    const/16 v4, 0x45

    .line 653
    :try_start_a
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_14} :catch_183

    sparse-switch v1, :sswitch_data_186

    .line 765
    :cond_17
    :goto_17
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Bad Month"

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 657
    :sswitch_21
    :try_start_21
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_1c8

    goto :goto_17

    .line 660
    :sswitch_2f
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 661
    .local v0, "curr":C
    if-eq v0, v7, :cond_3f

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_17

    .line 662
    :cond_3f
    const/4 v1, 0x0

    .line 757
    :goto_40
    return v1

    .line 668
    .end local v0    # "curr":C
    :sswitch_41
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 669
    .restart local v0    # "curr":C
    if-eq v0, v7, :cond_51

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_53

    .line 670
    :cond_51
    const/4 v1, 0x5

    goto :goto_40

    .line 671
    :cond_53
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_17

    .line 672
    :cond_5b
    const/4 v1, 0x6

    goto :goto_40

    .line 680
    .end local v0    # "curr":C
    :sswitch_5d
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 681
    .restart local v0    # "curr":C
    if-eq v0, v4, :cond_6b

    if-ne v0, v5, :cond_17

    .line 682
    :cond_6b
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 683
    const/16 v1, 0x42

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x62

    if-ne v0, v1, :cond_17

    .line 684
    :cond_7d
    const/4 v1, 0x1

    goto :goto_40

    .line 691
    .end local v0    # "curr":C
    :sswitch_7f
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 692
    .restart local v0    # "curr":C
    const/16 v1, 0x41

    if-eq v0, v1, :cond_91

    const/16 v1, 0x61

    if-ne v0, v1, :cond_17

    .line 693
    :cond_91
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 694
    const/16 v1, 0x52

    if-eq v0, v1, :cond_a3

    const/16 v1, 0x72

    if-ne v0, v1, :cond_a5

    .line 695
    :cond_a3
    const/4 v1, 0x2

    goto :goto_40

    .line 696
    :cond_a5
    const/16 v1, 0x59

    if-eq v0, v1, :cond_ad

    const/16 v1, 0x79

    if-ne v0, v1, :cond_17

    .line 697
    :cond_ad
    const/4 v1, 0x4

    goto :goto_40

    .line 704
    .end local v0    # "curr":C
    :sswitch_af
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 705
    .restart local v0    # "curr":C
    if-eq v0, v8, :cond_bf

    const/16 v1, 0x70

    if-ne v0, v1, :cond_d4

    .line 706
    :cond_bf
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 707
    const/16 v1, 0x52

    if-eq v0, v1, :cond_d1

    const/16 v1, 0x72

    if-ne v0, v1, :cond_17

    .line 708
    :cond_d1
    const/4 v1, 0x3

    goto/16 :goto_40

    .line 710
    :cond_d4
    const/16 v1, 0x55

    if-eq v0, v1, :cond_dc

    const/16 v1, 0x75

    if-ne v0, v1, :cond_17

    .line 711
    :cond_dc
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 712
    const/16 v1, 0x47

    if-eq v0, v1, :cond_ee

    const/16 v1, 0x67

    if-ne v0, v1, :cond_17

    .line 713
    :cond_ee
    const/4 v1, 0x7

    goto/16 :goto_40

    .line 720
    .end local v0    # "curr":C
    :sswitch_f1
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 721
    .restart local v0    # "curr":C
    if-eq v0, v4, :cond_ff

    if-ne v0, v5, :cond_17

    .line 722
    :cond_ff
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 723
    if-eq v0, v8, :cond_10f

    const/16 v1, 0x70

    if-ne v0, v1, :cond_17

    .line 724
    :cond_10f
    const/16 v1, 0x8

    goto/16 :goto_40

    .line 731
    .end local v0    # "curr":C
    :sswitch_113
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 732
    .restart local v0    # "curr":C
    if-eq v0, v6, :cond_123

    const/16 v1, 0x63

    if-ne v0, v1, :cond_17

    .line 733
    :cond_123
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 734
    const/16 v1, 0x54

    if-eq v0, v1, :cond_135

    const/16 v1, 0x74

    if-ne v0, v1, :cond_17

    .line 735
    :cond_135
    const/16 v1, 0x9

    goto/16 :goto_40

    .line 742
    .end local v0    # "curr":C
    :sswitch_139
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 743
    .restart local v0    # "curr":C
    const/16 v1, 0x4f

    if-eq v0, v1, :cond_14b

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_17

    .line 744
    :cond_14b
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 745
    const/16 v1, 0x56

    if-eq v0, v1, :cond_15d

    const/16 v1, 0x76

    if-ne v0, v1, :cond_17

    .line 746
    :cond_15d
    const/16 v1, 0xa

    goto/16 :goto_40

    .line 753
    .end local v0    # "curr":C
    :sswitch_161
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 754
    .restart local v0    # "curr":C
    if-eq v0, v4, :cond_16f

    if-ne v0, v5, :cond_17

    .line 755
    :cond_16f
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2
    :try_end_179
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_179} :catch_183

    .line 756
    if-eq v0, v6, :cond_17f

    const/16 v1, 0x63

    if-ne v0, v1, :cond_17

    .line 757
    :cond_17f
    const/16 v1, 0xb

    goto/16 :goto_40

    .line 762
    .end local v0    # "curr":C
    :catch_183
    move-exception v1

    goto/16 :goto_17

    .line 653
    :sswitch_data_186
    .sparse-switch
        0x41 -> :sswitch_af
        0x44 -> :sswitch_161
        0x46 -> :sswitch_5d
        0x4a -> :sswitch_21
        0x4d -> :sswitch_7f
        0x4e -> :sswitch_139
        0x4f -> :sswitch_113
        0x53 -> :sswitch_f1
        0x61 -> :sswitch_af
        0x64 -> :sswitch_161
        0x66 -> :sswitch_5d
        0x6a -> :sswitch_21
        0x6d -> :sswitch_7f
        0x6e -> :sswitch_139
        0x6f -> :sswitch_113
        0x73 -> :sswitch_f1
    .end sparse-switch

    .line 657
    :sswitch_data_1c8
    .sparse-switch
        0x41 -> :sswitch_2f
        0x55 -> :sswitch_41
        0x61 -> :sswitch_2f
        0x75 -> :sswitch_41
    .end sparse-switch
.end method

.method public parseNumber()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v3

    .line 570
    .local v1, "length":I
    const/4 v0, 0x0

    .line 571
    .local v0, "gotNum":Z
    const/4 v2, 0x0

    .line 573
    .local v2, "result":I
    :goto_5
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v3, v1, :cond_c

    .line 636
    if-eqz v0, :cond_61

    .line 637
    :cond_b
    return v2

    .line 574
    :cond_c
    iget-object v3, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v3, v4

    packed-switch v3, :pswitch_data_6c

    .line 626
    if-nez v0, :cond_b

    .line 629
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "No Number found"

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 576
    :pswitch_21
    mul-int/lit8 v2, v2, 0xa

    .line 577
    const/4 v0, 0x1

    .line 632
    :goto_24
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_5

    .line 581
    :pswitch_2b
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x1

    .line 582
    const/4 v0, 0x1

    .line 583
    goto :goto_24

    .line 586
    :pswitch_31
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x2

    .line 587
    const/4 v0, 0x1

    .line 588
    goto :goto_24

    .line 591
    :pswitch_37
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x3

    .line 592
    const/4 v0, 0x1

    .line 593
    goto :goto_24

    .line 596
    :pswitch_3d
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x4

    .line 597
    const/4 v0, 0x1

    .line 598
    goto :goto_24

    .line 601
    :pswitch_43
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x5

    .line 602
    const/4 v0, 0x1

    .line 603
    goto :goto_24

    .line 606
    :pswitch_49
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x6

    .line 607
    const/4 v0, 0x1

    .line 608
    goto :goto_24

    .line 611
    :pswitch_4f
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x7

    .line 612
    const/4 v0, 0x1

    .line 613
    goto :goto_24

    .line 616
    :pswitch_55
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x8

    .line 617
    const/4 v0, 0x1

    .line 618
    goto :goto_24

    .line 621
    :pswitch_5b
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v2, v3, 0x9

    .line 622
    const/4 v0, 0x1

    .line 623
    goto :goto_24

    .line 640
    :cond_61
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "No Number found"

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 574
    nop

    :pswitch_data_6c
    .packed-switch 0x30
        :pswitch_21
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_3d
        :pswitch_43
        :pswitch_49
        :pswitch_4f
        :pswitch_55
        :pswitch_5b
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 797
    const/4 v2, 0x0

    .line 798
    .local v2, "switchSign":Z
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v4, v5

    .line 799
    .local v0, "first":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_20

    .line 800
    const/4 v2, 0x1

    .line 805
    :cond_10
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v3

    .line 806
    .local v3, "tz":I
    div-int/lit8 v4, v3, 0x64

    mul-int/lit8 v4, v4, 0x3c

    rem-int/lit8 v5, v3, 0x64

    add-int v1, v4, v5

    .line 807
    .local v1, "offset":I
    if-eqz v2, :cond_1f

    .line 808
    neg-int v1, v1

    .line 810
    .end local v1    # "offset":I
    :cond_1f
    return v1

    .line 801
    .end local v3    # "tz":I
    :cond_20
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_10

    .line 802
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad Numeric TimeZone"

    iget v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public parseTimeZone()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 774
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v2

    if-lt v1, v2, :cond_11

    .line 775
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "No more characters"

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 777
    :cond_11
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v1, v2

    .line 778
    .local v0, "test":C
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_24

    .line 779
    :cond_1f
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v1

    .line 781
    :goto_23
    return v1

    :cond_24
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v1

    goto :goto_23
.end method

.method public peekChar()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 523
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 524
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    return v0

    .line 526
    :cond_e
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .registers 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 534
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 535
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_16

    .line 536
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 543
    return-void

    .line 538
    :cond_16
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Wrong char"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 541
    :cond_20
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipIfChar(C)Z
    .registers 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 550
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 551
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_17

    .line 552
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 553
    const/4 v0, 0x1

    .line 555
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    .line 558
    :cond_19
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipUntilNumber()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 474
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 488
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_0

    .line 492
    :catch_10
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "No Number Found"

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 485
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :pswitch_1b
    return-void

    .line 474
    :pswitch_data_1c
    .packed-switch 0x30
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .registers 4

    .prologue
    .line 501
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v1

    .line 502
    .local v0, "len":I
    :goto_3
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_8

    .line 515
    :goto_7
    return-void

    .line 503
    :cond_8
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_1a

    goto :goto_7

    .line 508
    :sswitch_12
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_3

    .line 503
    nop

    :sswitch_data_1a
    .sparse-switch
        0x9 -> :sswitch_12
        0xa -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_12
    .end sparse-switch
.end method
