.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 324
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 323
    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 105
    invoke-static {p1, v3}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 107
    .local v0, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v1, v0

    if-eq v1, v3, :cond_14

    .line 108
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v1, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_14
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 117
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 118
    aget-object v1, v0, v2

    iget-object v1, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 160
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 134
    if-eqz p2, :cond_b

    .line 135
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 136
    :cond_b
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .registers 10
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x40

    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "start":I
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_c

    .line 949
    :cond_b
    return-void

    .line 889
    :cond_c
    if-eqz p1, :cond_17

    .line 894
    const/4 v3, 0x0

    :goto_f
    const-string v4, ",:"

    invoke-static {p0, v4, v3}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .local v1, "i":I
    if-gez v1, :cond_27

    .line 911
    .end local v1    # "i":I
    :cond_17
    :goto_17
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .restart local v1    # "i":I
    if-ltz v1, :cond_6d

    .line 912
    if-ne v1, v3, :cond_43

    .line 913
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 896
    :cond_27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_35

    .line 897
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal route-addr"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 898
    :cond_35
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_40

    .line 900
    add-int/lit8 v3, v1, 0x1

    .line 901
    goto :goto_17

    .line 895
    :cond_40
    add-int/lit8 v3, v1, 0x1

    goto :goto_f

    .line 914
    :cond_43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_53

    .line 915
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 916
    :cond_53
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "local":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "domain":Ljava/lang/String;
    :goto_5d
    const-string v4, " \t\n\r"

    invoke-static {p0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_7a

    .line 940
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal whitespace in address"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 928
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "local":Ljava/lang/String;
    :cond_6d
    if-eqz p2, :cond_77

    .line 929
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing final \'@domain\'"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 935
    :cond_77
    move-object v2, p0

    .line 936
    .restart local v2    # "local":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "domain":Ljava/lang/String;
    goto :goto_5d

    .line 942
    :cond_7a
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v2, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8a

    .line 943
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 945
    :cond_8a
    if-eqz v0, :cond_b

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_b

    .line 946
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b

    .line 947
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .registers 7
    .param p0, "session"    # Ljavax/mail/Session;

    .prologue
    .line 502
    const/4 v3, 0x0

    .local v3, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v0, 0x0

    .line 504
    .local v0, "address":Ljava/lang/String;
    if-nez p0, :cond_44

    .line 505
    :try_start_5
    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 524
    :cond_13
    :goto_13
    if-nez v0, :cond_3c

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 525
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_3c
    if-eqz v0, :cond_88

    .line 529
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 533
    :goto_43
    return-object v4

    .line 508
    :cond_44
    const-string v4, "mail.from"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    if-nez v0, :cond_13

    .line 510
    const-string v4, "mail.user"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_60

    .line 512
    :cond_5a
    const-string v4, "user.name"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    :cond_60
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6e

    .line 514
    :cond_68
    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    :cond_6e
    const-string v4, "mail.host"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    .line 517
    :cond_7c
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 518
    .local v2, "me":Ljava/net/InetAddress;
    if-eqz v2, :cond_13

    .line 519
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_85} :catch_8c
    .catch Ljavax/mail/internet/AddressException; {:try_start_5 .. :try_end_85} :catch_8a
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_85} :catch_87

    move-result-object v1

    goto :goto_13

    .line 532
    .end local v2    # "me":Ljava/net/InetAddress;
    :catch_87
    move-exception v4

    .line 533
    :cond_88
    :goto_88
    const/4 v4, 0x0

    goto :goto_43

    .line 531
    :catch_8a
    move-exception v4

    goto :goto_88

    .line 530
    :catch_8c
    move-exception v4

    goto :goto_88
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 1007
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

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

    .line 1012
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1013
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_6
    if-lt v1, v2, :cond_a

    move v1, v3

    .line 1019
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_9
    :goto_9
    return v1

    .line 1014
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

    .line 1013
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1018
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1019
    goto :goto_9
.end method

.method private isSimple()Z
    .registers 3

    .prologue
    .line 956
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 472
    .end local v0    # "pos":I
    :goto_9
    return v0

    .restart local v0    # "pos":I
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_9
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .prologue
    .line 482
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 485
    :goto_10
    return v1

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_10
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .registers 2
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .registers 25
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 608
    const/16 v18, -0x1

    .local v18, "start_personal":I
    const/4 v7, -0x1

    .line 609
    .local v7, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 610
    .local v11, "length":I
    const/4 v8, 0x0

    .line 611
    .local v8, "in_group":Z
    const/4 v15, 0x0

    .line 612
    .local v15, "route_addr":Z
    const/4 v14, 0x0

    .line 614
    .local v14, "rfc822":Z
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 617
    .local v19, "v":Ljava/util/Vector;
    const/4 v6, -0x1

    .local v6, "end":I
    move/from16 v17, v6

    .local v17, "start":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_13
    if-lt v9, v11, :cond_6c

    .line 822
    if-ltz v17, :cond_5e

    .line 828
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 829
    move v6, v9

    .line 830
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, "addr":Ljava/lang/String;
    if-nez v14, :cond_30

    if-nez p1, :cond_30

    if-eqz p2, :cond_28a

    .line 832
    :cond_30
    if-nez p1, :cond_34

    if-nez p2, :cond_3b

    .line 833
    :cond_34
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 834
    :cond_3b
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 835
    .local v12, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 836
    if-ltz v18, :cond_59

    .line 838
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 837
    invoke-static/range {v20 .. v20}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 840
    :cond_59
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 854
    .end local v4    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_5e
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v3, v0, [Ljavax/mail/internet/InternetAddress;

    .line 855
    .local v3, "a":[Ljavax/mail/internet/InternetAddress;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 856
    return-object v3

    .line 618
    .end local v3    # "a":[Ljavax/mail/internet/InternetAddress;
    :cond_6c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 620
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_2b4

    .line 816
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7f

    .line 817
    move/from16 v17, v9

    .line 617
    :cond_7f
    :goto_7f
    :sswitch_7f
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 624
    :sswitch_82
    const/4 v14, 0x1

    .line 625
    if-ltz v17, :cond_8c

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_8c

    .line 626
    move v6, v9

    .line 627
    :cond_8c
    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_96

    .line 628
    add-int/lit8 v18, v9, 0x1

    .line 629
    :cond_96
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x1

    .local v13, "nesting":I
    :goto_99
    if-ge v9, v11, :cond_9d

    if-gtz v13, :cond_ad

    .line 646
    :cond_9d
    if-lez v13, :cond_c2

    .line 647
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \')\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 631
    :cond_ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 632
    sparse-switch v5, :sswitch_data_2ea

    .line 630
    :goto_b6
    add-int/lit8 v9, v9, 0x1

    goto :goto_99

    .line 634
    :sswitch_b9
    add-int/lit8 v9, v9, 0x1

    .line 635
    goto :goto_b6

    .line 637
    :sswitch_bc
    add-int/lit8 v13, v13, 0x1

    .line 638
    goto :goto_b6

    .line 640
    :sswitch_bf
    add-int/lit8 v13, v13, -0x1

    .line 641
    goto :goto_b6

    .line 648
    :cond_c2
    add-int/lit8 v9, v9, -0x1

    .line 649
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_7f

    .line 650
    move v7, v9

    .line 651
    goto :goto_7f

    .line 654
    .end local v13    # "nesting":I
    :sswitch_cc
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'(\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 657
    :sswitch_da
    const/4 v14, 0x1

    .line 658
    if-eqz v15, :cond_eb

    .line 659
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Extra route-addr"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 660
    :cond_eb
    if-nez v8, :cond_f4

    .line 661
    move/from16 v18, v17

    .line 662
    if-ltz v18, :cond_f2

    .line 663
    move v7, v9

    .line 664
    :cond_f2
    add-int/lit8 v17, v9, 0x1

    .line 667
    :cond_f4
    const/4 v10, 0x0

    .line 669
    .local v10, "inquote":Z
    add-int/lit8 v9, v9, 0x1

    :goto_f7
    if-lt v9, v11, :cond_10b

    .line 686
    :cond_f9
    if-lt v9, v11, :cond_131

    .line 687
    if-eqz v10, :cond_123

    .line 688
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'\"\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 670
    :cond_10b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 671
    sparse-switch v5, :sswitch_data_2f8

    .line 669
    :goto_114
    add-int/lit8 v9, v9, 0x1

    goto :goto_f7

    .line 673
    :sswitch_117
    add-int/lit8 v9, v9, 0x1

    .line 674
    goto :goto_114

    .line 676
    :sswitch_11a
    if-eqz v10, :cond_11e

    const/4 v10, 0x0

    .line 677
    :goto_11d
    goto :goto_114

    .line 676
    :cond_11e
    const/4 v10, 0x1

    goto :goto_11d

    .line 679
    :sswitch_120
    if-eqz v10, :cond_f9

    goto :goto_114

    .line 690
    :cond_123
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'>\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 692
    :cond_131
    const/4 v15, 0x1

    .line 693
    move v6, v9

    .line 694
    goto/16 :goto_7f

    .line 696
    .end local v10    # "inquote":Z
    :sswitch_135
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'<\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 699
    :sswitch_143
    const/4 v14, 0x1

    .line 700
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_14e

    .line 701
    move/from16 v17, v9

    .line 703
    :cond_14e
    add-int/lit8 v9, v9, 0x1

    :goto_150
    if-lt v9, v11, :cond_162

    .line 715
    :sswitch_152
    if-lt v9, v11, :cond_7f

    .line 716
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \'\"\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 704
    :cond_162
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 705
    sparse-switch v5, :sswitch_data_306

    .line 703
    :goto_16b
    add-int/lit8 v9, v9, 0x1

    goto :goto_150

    .line 707
    :sswitch_16e
    add-int/lit8 v9, v9, 0x1

    .line 708
    goto :goto_16b

    .line 720
    :sswitch_171
    const/4 v14, 0x1

    .line 722
    add-int/lit8 v9, v9, 0x1

    :goto_174
    if-lt v9, v11, :cond_186

    .line 734
    :pswitch_176
    if-lt v9, v11, :cond_7f

    .line 735
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Missing \']\'"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 723
    :cond_186
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 724
    packed-switch v5, :pswitch_data_310

    .line 722
    :goto_18f
    add-int/lit8 v9, v9, 0x1

    goto :goto_174

    .line 726
    :pswitch_192
    add-int/lit8 v9, v9, 0x1

    .line 727
    goto :goto_18f

    .line 739
    :sswitch_195
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a4

    .line 740
    const/4 v15, 0x0

    .line 741
    const/4 v14, 0x0

    .line 742
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 743
    goto/16 :goto_7f

    .line 745
    :cond_1a4
    if-eqz v8, :cond_1a9

    .line 746
    const/4 v15, 0x0

    .line 747
    goto/16 :goto_7f

    .line 750
    :cond_1a9
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_1b0

    .line 751
    move v6, v9

    .line 752
    :cond_1b0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 753
    .restart local v4    # "addr":Ljava/lang/String;
    if-nez v14, :cond_1c2

    if-nez p1, :cond_1c2

    if-eqz p2, :cond_1fa

    .line 754
    :cond_1c2
    if-nez p1, :cond_1c6

    if-nez p2, :cond_1cd

    .line 755
    :cond_1c6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v15, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 756
    :cond_1cd
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 757
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v4}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 758
    if-ltz v18, :cond_1ee

    .line 760
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 759
    invoke-static/range {v20 .. v20}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 761
    const/4 v7, -0x1

    move/from16 v18, v7

    .line 763
    :cond_1ee
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 776
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_1f3
    const/4 v15, 0x0

    .line 777
    const/4 v14, 0x0

    .line 778
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 779
    goto/16 :goto_7f

    .line 766
    :cond_1fa
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 767
    .local v16, "st":Ljava/util/StringTokenizer;
    :goto_201
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_1f3

    .line 768
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "a":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 770
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 771
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_201

    .line 782
    .end local v3    # "a":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    :sswitch_224
    const/4 v14, 0x1

    .line 783
    if-eqz v8, :cond_235

    .line 784
    new-instance v20, Ljavax/mail/internet/AddressException;

    const-string v21, "Nested group"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 785
    :cond_235
    const/4 v8, 0x1

    .line 786
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7f

    .line 787
    move/from16 v17, v9

    .line 788
    goto/16 :goto_7f

    .line 791
    :sswitch_242
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_24c

    .line 792
    move/from16 v17, v9

    .line 793
    :cond_24c
    if-nez v8, :cond_25c

    .line 794
    new-instance v20, Ljavax/mail/internet/AddressException;

    .line 795
    const-string v21, "Illegal semicolon, not in group"

    .line 794
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v9}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v20

    .line 796
    :cond_25c
    const/4 v8, 0x0

    .line 797
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_267

    .line 798
    move/from16 v17, v9

    .line 799
    :cond_267
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 800
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v6, v9, 0x1

    .line 801
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 804
    const/4 v15, 0x0

    .line 805
    const/4 v6, -0x1

    move/from16 v17, v6

    .line 806
    goto/16 :goto_7f

    .line 843
    .end local v5    # "c":C
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    .restart local v4    # "addr":Ljava/lang/String;
    :cond_28a
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 844
    .restart local v16    # "st":Ljava/util/StringTokenizer;
    :goto_291
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_5e

    .line 845
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 846
    .restart local v3    # "a":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 847
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 848
    .restart local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_291

    .line 620
    :sswitch_data_2b4
    .sparse-switch
        0x9 -> :sswitch_7f
        0xa -> :sswitch_7f
        0xd -> :sswitch_7f
        0x20 -> :sswitch_7f
        0x22 -> :sswitch_143
        0x28 -> :sswitch_82
        0x29 -> :sswitch_cc
        0x2c -> :sswitch_195
        0x3a -> :sswitch_224
        0x3b -> :sswitch_242
        0x3c -> :sswitch_da
        0x3e -> :sswitch_135
        0x5b -> :sswitch_171
    .end sparse-switch

    .line 632
    :sswitch_data_2ea
    .sparse-switch
        0x28 -> :sswitch_bc
        0x29 -> :sswitch_bf
        0x5c -> :sswitch_b9
    .end sparse-switch

    .line 671
    :sswitch_data_2f8
    .sparse-switch
        0x22 -> :sswitch_11a
        0x3e -> :sswitch_120
        0x5c -> :sswitch_117
    .end sparse-switch

    .line 705
    :sswitch_data_306
    .sparse-switch
        0x22 -> :sswitch_152
        0x5c -> :sswitch_16e
    .end sparse-switch

    .line 724
    :pswitch_data_310
    .packed-switch 0x5c
        :pswitch_192
        :pswitch_176
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "phrase"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 328
    .local v4, "len":I
    const/4 v5, 0x0

    .line 330
    .local v5, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-lt v2, v4, :cond_25

    .line 351
    if-eqz v5, :cond_24

    .line 352
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 353
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local p0    # "phrase":Ljava/lang/String;
    :cond_24
    :goto_24
    return-object p0

    .line 331
    .restart local p0    # "phrase":Ljava/lang/String;
    :cond_25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 332
    .local v0, "c":C
    if-eq v0, v8, :cond_2d

    if-ne v0, v9, :cond_53

    .line 334
    :cond_2d
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v4, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 335
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_38
    if-lt v3, v4, :cond_42

    .line 343
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 337
    :cond_42
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 338
    .local v1, "cc":C
    if-eq v1, v8, :cond_4a

    if-ne v1, v9, :cond_4d

    .line 340
    :cond_4a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    :cond_4d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 345
    .end local v1    # "cc":C
    .end local v3    # "j":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_53
    const/16 v7, 0x20

    if-ge v0, v7, :cond_63

    const/16 v7, 0xd

    if-eq v0, v7, :cond_63

    const/16 v7, 0xa

    if-eq v0, v7, :cond_63

    const/16 v7, 0x9

    if-ne v0, v7, :cond_6f

    .line 346
    :cond_63
    const/16 v7, 0x7f

    if-ge v0, v7, :cond_6f

    sget-object v7, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_70

    .line 348
    :cond_6f
    const/4 v5, 0x1

    .line 330
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .registers 2
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .registers 8
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .prologue
    .line 440
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_7

    .line 441
    :cond_5
    const/4 v4, 0x0

    .line 461
    :goto_6
    return-object v4

    .line 443
    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v4, p0

    if-lt v0, v4, :cond_15

    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 446
    :cond_15
    if-eqz v0, :cond_1e

    .line 447
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    add-int/lit8 p1, p1, 0x2

    .line 451
    :cond_1e
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, "len":I
    add-int v4, p1, v1

    const/16 v5, 0x4c

    if-le v4, v5, :cond_35

    .line 454
    const-string v4, "\r\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const/16 p1, 0x8

    .line 457
    :cond_35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 360
    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 361
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_37

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 365
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_38

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 374
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_37
    return-object p0

    .line 366
    .restart local v1    # "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_38
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 367
    .local v0, "c":C
    if-ne v0, v5, :cond_4c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4c

    .line 368
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 369
    :cond_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    move-object v1, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_a

    .line 173
    :goto_9
    return-object v1

    .line 172
    :catch_a
    move-exception v2

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    instance-of v3, p1, Ljavax/mail/internet/InternetAddress;

    if-nez v3, :cond_7

    .line 390
    .end local p1    # "a":Ljava/lang/Object;
    :cond_6
    :goto_6
    return v1

    .line 384
    .restart local p1    # "a":Ljava/lang/Object;
    :cond_7
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    .end local p1    # "a":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "s":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-ne v0, v3, :cond_13

    move v1, v2

    .line 386
    goto :goto_6

    .line 387
    :cond_13
    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 388
    goto :goto_6
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .registers 8
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "groups":Ljava/util/Vector;
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "addr":Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 997
    :cond_e
    :goto_e
    return-object v4

    .line 991
    :cond_f
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 992
    .local v2, "ix":I
    if-ltz v2, :cond_e

    .line 995
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "list":Ljava/lang/String;
    invoke-static {v3, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    goto :goto_e
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 252
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 266
    :goto_6
    return-object v1

    .line 254
    :cond_7
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 256
    :try_start_b
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_6

    .line 258
    :catch_16
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_6

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isGroup()Z
    .registers 3

    .prologue
    .line 970
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 971
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    .line 970
    goto :goto_19
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 229
    if-eqz p1, :cond_b

    .line 230
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 233
    :goto_a
    return-void

    .line 232
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_a
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 209
    if-eqz p1, :cond_c

    .line 210
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 213
    :goto_b
    return-void

    .line 212
    :cond_c
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 279
    :try_start_8
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_10} :catch_61

    .line 282
    :cond_10
    :goto_10
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_39
    return-object v0

    .line 284
    :cond_3a
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 285
    :cond_46
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_39

    .line 287
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 280
    :catch_61
    move-exception v0

    goto :goto_10
.end method

.method public toUnicodeString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 298
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :goto_29
    return-object v1

    .line 301
    :cond_2a
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 302
    :cond_36
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    goto :goto_29

    .line 304
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 870
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 871
    return-void
.end method
