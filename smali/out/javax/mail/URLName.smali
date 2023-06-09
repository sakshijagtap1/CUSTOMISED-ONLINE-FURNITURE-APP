.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "URLName.java"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 124
    sput-boolean v1, Ljavax/mail/URLName;->doEncode:Z

    .line 128
    :try_start_3
    const-string v2, "mail.URLName.dontencode"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x0

    :cond_c
    sput-boolean v1, Ljavax/mail/URLName;->doEncode:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_65

    .line 524
    :goto_e
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    .line 526
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_19
    const/16 v1, 0x7a

    if-le v0, v1, :cond_4d

    .line 529
    const/16 v0, 0x41

    :goto_1f
    const/16 v1, 0x5a

    if-le v0, v1, :cond_55

    .line 532
    const/16 v0, 0x30

    :goto_25
    const/16 v1, 0x39

    if-le v0, v1, :cond_5d

    .line 536
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 537
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 538
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 539
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 540
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 67
    return-void

    .line 527
    :cond_4d
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 530
    :cond_55
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 533
    :cond_5d
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 129
    .end local v0    # "i":I
    :catch_65
    move-exception v1

    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 119
    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 176
    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v2, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 104
    iput v3, p0, Ljavax/mail/URLName;->port:I

    .line 119
    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 149
    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 151
    iput p3, p0, Ljavax/mail/URLName;->port:I

    .line 153
    if-eqz p4, :cond_3e

    const/16 v1, 0x23

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "refStart":I
    if-eq v0, v3, :cond_3e

    .line 154
    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 155
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 160
    .end local v0    # "refStart":I
    :goto_29
    sget-boolean v1, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v1, :cond_31

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .end local p5    # "username":Ljava/lang/String;
    :cond_31
    iput-object p5, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 161
    sget-boolean v1, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v1, :cond_3b

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .end local p6    # "password":Ljava/lang/String;
    :cond_3b
    iput-object p6, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 162
    return-void

    .line 157
    .restart local p5    # "username":Ljava/lang/String;
    .restart local p6    # "password":Ljava/lang/String;
    :cond_3e
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    goto :goto_29
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x10

    .line 562
    const/16 v7, 0xa

    .line 563
    .local v7, "maxBytesPerChar":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 564
    .local v8, "out":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 565
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 567
    .local v9, "writer":Ljava/io/OutputStreamWriter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v5, v10, :cond_23

    .line 603
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 568
    :cond_23
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 569
    .local v2, "c":I
    sget-object v10, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 570
    const/16 v10, 0x20

    if-ne v2, v10, :cond_35

    .line 571
    const/16 v2, 0x2b

    .line 573
    :cond_35
    int-to-char v10, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 577
    :cond_3c
    :try_start_3c
    invoke-virtual {v9, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 578
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_4e

    .line 583
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 584
    .local v0, "ba":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_47
    array-length v10, v0

    if-lt v6, v10, :cond_53

    .line 599
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_39

    .line 579
    .end local v0    # "ba":[B
    .end local v6    # "j":I
    :catch_4e
    move-exception v4

    .line 580
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_39

    .line 585
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "ba":[B
    .restart local v6    # "j":I
    :cond_53
    const/16 v10, 0x25

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 586
    aget-byte v10, v0, v6

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 589
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 590
    add-int/lit8 v10, v3, -0x20

    int-to-char v3, v10

    .line 592
    :cond_6b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 593
    aget-byte v10, v0, v6

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 594
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 595
    add-int/lit8 v10, v3, -0x20

    int-to-char v3, v10

    .line 597
    :cond_7f
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 584
    add-int/lit8 v6, v6, 0x1

    goto :goto_47
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 638
    if-nez p0, :cond_4

    .line 639
    const/4 p0, 0x0

    .line 672
    .end local p0    # "s":Ljava/lang/String;
    .local v2, "i":I
    .local v4, "result":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuffer;
    :cond_3
    :goto_3
    return-object p0

    .line 640
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local p0    # "s":Ljava/lang/String;
    :cond_4
    const-string v7, "+%"

    invoke-static {p0, v7}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 643
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 644
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_2b

    .line 665
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 667
    .restart local v4    # "result":Ljava/lang/String;
    :try_start_1d
    const-string v7, "8859_1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 668
    .local v3, "inputBytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_28} :catch_5a

    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    move-object v4, v5

    .end local v3    # "inputBytes":[B
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :goto_29
    move-object p0, v4

    .line 672
    goto :goto_3

    .line 645
    .end local v4    # "result":Ljava/lang/String;
    :cond_2b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 646
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_5c

    .line 660
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 644
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 648
    :sswitch_38
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 653
    :sswitch_3e
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v2, 0x3

    :try_start_42
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    .line 652
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_50} :catch_53

    .line 657
    add-int/lit8 v2, v2, 0x2

    .line 658
    goto :goto_35

    .line 654
    :catch_53
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 669
    .end local v0    # "c":C
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_5a
    move-exception v7

    goto :goto_29

    .line 646
    :sswitch_data_5c
    .sparse-switch
        0x25 -> :sswitch_3e
        0x2b -> :sswitch_38
    .end sparse-switch
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 550
    if-nez p0, :cond_4

    .line 551
    const/4 p0, 0x0

    .line 558
    .end local p0    # "s":Ljava/lang/String;
    .local v1, "i":I
    :cond_3
    :goto_3
    return-object p0

    .line 553
    .end local v1    # "i":I
    .restart local p0    # "s":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 554
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 555
    .local v0, "c":I
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1b

    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 556
    :cond_1b
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 553
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 482
    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v2, :cond_a

    .line 483
    iget-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_21

    .line 492
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v1

    .line 484
    :cond_a
    :try_start_a
    iget-object v2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_21

    if-eqz v2, :cond_8

    .line 487
    :try_start_e
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_16} :catch_1c
    .catchall {:try_start_e .. :try_end_16} :catchall_21

    .line 491
    :goto_16
    const/4 v1, 0x1

    :try_start_17
    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 492
    iget-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    goto :goto_8

    .line 488
    :catch_1c
    move-exception v0

    .line 489
    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_21

    goto :goto_16

    .line 482
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 687
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 688
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_6
    if-lt v1, v2, :cond_a

    move v1, v3

    .line 694
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_9
    :goto_9
    return v1

    .line 689
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_11
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_17

    move-result v4

    if-gez v4, :cond_9

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 693
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 694
    goto :goto_9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 408
    instance-of v6, p1, Ljavax/mail/URLName;

    if-nez v6, :cond_6

    .line 452
    :cond_5
    :goto_5
    return v5

    :cond_6
    move-object v4, p1

    .line 410
    check-cast v4, Ljavax/mail/URLName;

    .line 413
    .local v4, "u2":Ljavax/mail/URLName;
    iget-object v6, v4, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v4, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v7, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 417
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "a1":Ljava/net/InetAddress;
    invoke-direct {v4}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 419
    .local v1, "a2":Ljava/net/InetAddress;
    if-eqz v0, :cond_57

    if-eqz v1, :cond_57

    .line 420
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 433
    :cond_29
    iget-object v6, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v6, v7, :cond_3d

    .line 434
    iget-object v6, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 441
    :cond_3d
    iget-object v6, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v6, :cond_71

    const-string v2, ""

    .line 442
    .local v2, "f1":Ljava/lang/String;
    :goto_43
    iget-object v6, v4, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v6, :cond_74

    const-string v3, ""

    .line 444
    .local v3, "f2":Ljava/lang/String;
    :goto_49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 448
    iget v6, p0, Ljavax/mail/URLName;->port:I

    iget v7, v4, Ljavax/mail/URLName;->port:I

    if-ne v6, v7, :cond_5

    .line 452
    const/4 v5, 0x1

    goto :goto_5

    .line 423
    .end local v2    # "f1":Ljava/lang/String;
    .end local v3    # "f2":Ljava/lang/String;
    :cond_57
    iget-object v6, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v6, :cond_6a

    iget-object v6, v4, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v6, :cond_6a

    .line 424
    iget-object v6, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_5

    .line 427
    :cond_6a
    iget-object v6, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v6, v7, :cond_29

    goto :goto_5

    .line 441
    :cond_71
    iget-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_43

    .line 442
    .restart local v2    # "f1":Ljava/lang/String;
    :cond_74
    iget-object v3, v4, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_49
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    goto :goto_a
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 459
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v1, :cond_7

    .line 460
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 473
    :goto_6
    return v1

    .line 461
    :cond_7
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 462
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 463
    :cond_16
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 464
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_4d

    .line 465
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 468
    :cond_25
    :goto_25
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 469
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 470
    :cond_34
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 471
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 472
    :cond_43
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget v2, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 473
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_6

    .line 466
    :cond_4d
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 467
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_25
.end method

.method protected parseString(Ljava/lang/String;)V
    .registers 18
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 247
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/mail/URLName;->port:I

    .line 249
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 254
    .local v5, "len":I
    const/16 v12, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 255
    .local v10, "protocolEnd":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_38

    .line 256
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 259
    :cond_38
    add-int/lit8 v12, v10, 0x1

    const-string v13, "//"

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_130

    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "fullhost":Ljava/lang/String;
    const/16 v12, 0x2f

    add-int/lit8 v13, v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 263
    .local v1, "fileStart":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_10e

    .line 264
    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 265
    add-int/lit8 v12, v1, 0x1

    if-ge v12, v5, :cond_106

    .line 266
    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 273
    :goto_6c
    const/16 v12, 0x40

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 274
    .local v4, "i":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_9c

    .line 275
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "fulluserpass":Ljava/lang/String;
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 280
    .local v7, "passindex":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_118

    .line 281
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 282
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 290
    .end local v3    # "fulluserpass":Ljava/lang/String;
    .end local v7    # "passindex":I
    :cond_9c
    :goto_9c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_11d

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_11d

    .line 292
    const/16 v12, 0x3a

    const/16 v13, 0x5d

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 296
    .local v8, "portindex":I
    :goto_b7
    const/4 v12, -0x1

    if-eq v8, v12, :cond_12b

    .line 297
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "portstring":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_ce

    .line 300
    :try_start_c6
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/mail/URLName;->port:I
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_ce} :catch_124

    .line 306
    :cond_ce
    :goto_ce
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 317
    .end local v1    # "fileStart":I
    .end local v2    # "fullhost":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "portindex":I
    .end local v9    # "portstring":Ljava/lang/String;
    :cond_d7
    :goto_d7
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v12, :cond_105

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, "refStart":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_105

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 321
    .end local v11    # "refStart":I
    :cond_105
    return-void

    .line 268
    .restart local v1    # "fileStart":I
    .restart local v2    # "fullhost":Ljava/lang/String;
    :cond_106
    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto/16 :goto_6c

    .line 270
    :cond_10e
    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6c

    .line 284
    .restart local v3    # "fulluserpass":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v7    # "passindex":I
    :cond_118
    move-object/from16 v0, p0

    iput-object v3, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_9c

    .line 294
    .end local v3    # "fulluserpass":Ljava/lang/String;
    .end local v7    # "passindex":I
    :cond_11d
    const/16 v12, 0x3a

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .restart local v8    # "portindex":I
    goto :goto_b7

    .line 301
    .restart local v9    # "portstring":Ljava/lang/String;
    :catch_124
    move-exception v6

    .line 302
    .local v6, "nfex":Ljava/lang/NumberFormatException;
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/mail/URLName;->port:I

    goto :goto_ce

    .line 308
    .end local v6    # "nfex":Ljava/lang/NumberFormatException;
    .end local v9    # "portstring":Ljava/lang/String;
    :cond_12b
    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    goto :goto_d7

    .line 311
    .end local v1    # "fileStart":I
    .end local v2    # "fullhost":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "portindex":I
    :cond_130
    add-int/lit8 v12, v10, 0x1

    if-ge v12, v5, :cond_d7

    .line 312
    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_d7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 183
    iget-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v1, :cond_82

    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v0, "tempURL":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 187
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_17
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1f

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 193
    :cond_1f
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 198
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 201
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_3b
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_40
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 210
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_49
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    .line 215
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_5c
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 219
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_65
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 224
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_6e
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_7c

    .line 229
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    .line 237
    .end local v0    # "tempURL":Ljava/lang/StringBuffer;
    :cond_82
    iget-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v1
.end method
