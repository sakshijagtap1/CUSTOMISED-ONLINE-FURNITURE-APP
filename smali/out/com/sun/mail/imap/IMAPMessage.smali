.class public Lcom/sun/mail/imap/IMAPMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "IMAPMessage.java"


# static fields
.field private static EnvelopeCmd:Ljava/lang/String;


# instance fields
.field protected bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field protected envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field private headersLoaded:Z

.field private loadedHeaders:Ljava/util/Hashtable;

.field private peek:Z

.field private receivedDate:Ljava/util/Date;

.field protected sectionId:Ljava/lang/String;

.field private seqnum:I

.field private size:I

.field private subject:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 119
    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    sput-object v0, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/IMAPFolder;II)V
    .registers 6
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "msgnum"    # I
    .param p3, "seqnum"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 126
    iput p3, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 128
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .registers 4
    .param p1, "session"    # Ljavax/mail/Session;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 135
    return-void
.end method

.method private _getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v0
.end method

.method private _getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    return-object v0
.end method

.method private _getFlags()Ljavax/mail/Flags;
    .registers 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    return-object v0
.end method

.method private aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .param p1, "aa"    # [Ljavax/mail/internet/InternetAddress;

    .prologue
    .line 1404
    if-nez p1, :cond_4

    .line 1405
    const/4 v0, 0x0

    .line 1407
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    goto :goto_3
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;
    .registers 2

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;
    .registers 2

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getFlags()Ljavax/mail/Flags;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .registers 2

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->_getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/sun/mail/imap/IMAPMessage;)Z
    .registers 2

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->areHeadersLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/sun/mail/imap/IMAPMessage;)I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method static synthetic access$5(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1371
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized areHeadersLoaded()Z
    .registers 2

    .prologue
    .line 1358
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p1, "hdrs"    # [Ljava/lang/String;

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1233
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p1

    if-lt v0, v2, :cond_29

    .line 1243
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1244
    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1248
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1235
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_21
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "RFC822.HEADER.LINES ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    goto :goto_d

    .line 1238
    .restart local v0    # "i":I
    :cond_29
    if-lez v0, :cond_30

    .line 1239
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1240
    :cond_30
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1246
    :cond_38
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c
.end method

.method static fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 37
    .param p0, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 983
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 984
    .local v6, "command":Ljava/lang/StringBuffer;
    const/4 v11, 0x1

    .line 985
    .local v11, "first":Z
    const/4 v4, 0x0

    .line 987
    .local v4, "allHeaders":Z
    sget-object v29, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 988
    sget-object v29, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    const/4 v11, 0x0

    .line 991
    :cond_1b
    sget-object v29, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_31

    .line 992
    if-eqz v11, :cond_d6

    const-string v29, "FLAGS"

    :goto_2b
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    const/4 v11, 0x0

    .line 995
    :cond_31
    sget-object v29, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_47

    .line 996
    if-eqz v11, :cond_da

    const-string v29, "BODYSTRUCTURE"

    :goto_41
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    const/4 v11, 0x0

    .line 999
    :cond_47
    sget-object v29, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_5d

    .line 1000
    if-eqz v11, :cond_de

    const-string v29, "UID"

    :goto_57
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    const/4 v11, 0x0

    .line 1003
    :cond_5d
    sget-object v29, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_80

    .line 1004
    const/4 v4, 0x1

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v29

    if-eqz v29, :cond_e5

    .line 1006
    if-eqz v11, :cond_e2

    .line 1007
    const-string v29, "BODY.PEEK[HEADER]"

    .line 1006
    :goto_7a
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1010
    :goto_7f
    const/4 v11, 0x0

    .line 1012
    :cond_80
    sget-object v29, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_96

    .line 1013
    if-eqz v11, :cond_f2

    const-string v29, "RFC822.SIZE"

    :goto_90
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    const/4 v11, 0x0

    .line 1018
    :cond_96
    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/String;

    .line 1019
    .local v13, "hdrs":[Ljava/lang/String;
    if-nez v4, :cond_be

    .line 1020
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v13

    .line 1021
    array-length v0, v13

    move/from16 v29, v0

    if-lez v29, :cond_be

    .line 1022
    if-nez v11, :cond_ad

    .line 1023
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v13}, Lcom/sun/mail/imap/IMAPMessage;->craftHeaderCmd(Lcom/sun/mail/imap/protocol/IMAPProtocol;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    :cond_be
    new-instance v7, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;)V

    .line 1031
    .local v7, "condition":Lcom/sun/mail/imap/Utility$Condition;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 1035
    :try_start_cc
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v21

    .line 1037
    .local v21, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v21, :cond_f5

    .line 1039
    monitor-exit v30
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_116

    .line 1168
    :goto_d5
    return-void

    .line 992
    .end local v7    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local v13    # "hdrs":[Ljava/lang/String;
    .end local v21    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_d6
    const-string v29, " FLAGS"

    goto/16 :goto_2b

    .line 996
    :cond_da
    const-string v29, " BODYSTRUCTURE"

    goto/16 :goto_41

    .line 1000
    :cond_de
    const-string v29, " UID"

    goto/16 :goto_57

    .line 1007
    :cond_e2
    const-string v29, " BODY.PEEK[HEADER]"

    goto :goto_7a

    .line 1009
    :cond_e5
    if-eqz v11, :cond_ef

    const-string v29, "RFC822.HEADER"

    :goto_e9
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7f

    :cond_ef
    const-string v29, " RFC822.HEADER"

    goto :goto_e9

    .line 1013
    :cond_f2
    const-string v29, " RFC822.SIZE"

    goto :goto_90

    .line 1041
    .restart local v7    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local v13    # "hdrs":[Ljava/lang/String;
    .restart local v21    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_f5
    const/16 v23, 0x0

    :try_start_f7
    check-cast v23, [Lcom/sun/mail/iap/Response;

    .line 1042
    .local v23, "r":[Lcom/sun/mail/iap/Response;
    new-instance v28, Ljava/util/Vector;

    invoke-direct/range {v28 .. v28}, Ljava/util/Vector;-><init>()V
    :try_end_fe
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_116

    .line 1045
    .local v28, "v":Ljava/util/Vector;
    :try_start_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object/from16 v29, v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    :try_end_111
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_fe .. :try_end_111} :catch_119
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_fe .. :try_end_111} :catch_2f6
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_fe .. :try_end_111} :catch_12a
    .catchall {:try_start_fe .. :try_end_111} :catchall_116

    move-result-object v23

    .line 1054
    :goto_112
    if-nez v23, :cond_13b

    .line 1055
    :try_start_114
    monitor-exit v30

    goto :goto_d5

    .line 1031
    .end local v21    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v23    # "r":[Lcom/sun/mail/iap/Response;
    .end local v28    # "v":Ljava/util/Vector;
    :catchall_116
    move-exception v29

    monitor-exit v30
    :try_end_118
    .catchall {:try_start_114 .. :try_end_118} :catchall_116

    throw v29

    .line 1046
    .restart local v21    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v23    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v28    # "v":Ljava/util/Vector;
    :catch_119
    move-exception v5

    .line 1047
    .local v5, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_11a
    new-instance v29, Ljavax/mail/FolderClosedException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v29

    .line 1050
    .end local v5    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_12a
    move-exception v22

    .line 1051
    .local v22, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v29, Ljavax/mail/MessagingException;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v29

    .line 1057
    .end local v22    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_13b
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_13d
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_165

    .line 1160
    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v25

    .line 1161
    .local v25, "size":I
    if-eqz v25, :cond_162

    .line 1162
    move/from16 v0, v25

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    move-object/from16 v24, v0

    .line 1163
    .local v24, "responses":[Lcom/sun/mail/iap/Response;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1164
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1031
    .end local v24    # "responses":[Lcom/sun/mail/iap/Response;
    :cond_162
    monitor-exit v30

    goto/16 :goto_d5

    .line 1058
    .end local v25    # "size":I
    :cond_165
    aget-object v29, v23, v16

    if-nez v29, :cond_16c

    .line 1057
    :cond_169
    :goto_169
    add-int/lit8 v16, v16, 0x1

    goto :goto_13d

    .line 1060
    :cond_16c
    aget-object v29, v23, v16

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    move/from16 v29, v0

    if-nez v29, :cond_17c

    .line 1061
    aget-object v29, v23, v16

    invoke-virtual/range {v28 .. v29}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_169

    .line 1066
    :cond_17c
    aget-object v10, v23, v16

    check-cast v10, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1068
    .local v10, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v10}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v20

    .line 1070
    .local v20, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v10}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v8

    .line 1071
    .local v8, "count":I
    const/16 v27, 0x0

    .line 1073
    .local v27, "unsolicitedFlags":Z
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_194
    move/from16 v0, v18

    if-lt v0, v8, :cond_1a0

    .line 1155
    if-eqz v27, :cond_169

    .line 1156
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_169

    .line 1074
    :cond_1a0
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v17

    .line 1077
    .local v17, "item":Lcom/sun/mail/imap/protocol/Item;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljavax/mail/Flags;

    move/from16 v29, v0

    if-eqz v29, :cond_1ca

    .line 1078
    sget-object v29, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v29

    if-eqz v29, :cond_1bc

    .line 1079
    if-nez v20, :cond_1c1

    .line 1081
    :cond_1bc
    const/16 v27, 0x1

    .line 1073
    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_1be
    :goto_1be
    add-int/lit8 v18, v18, 0x1

    goto :goto_194

    .line 1083
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_1c1
    check-cast v17, Ljavax/mail/Flags;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    goto :goto_1be

    .line 1087
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_1ca
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    move/from16 v29, v0

    if-eqz v29, :cond_1db

    .line 1088
    check-cast v17, Lcom/sun/mail/imap/protocol/ENVELOPE;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    goto :goto_1be

    .line 1089
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_1db
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    move/from16 v29, v0

    if-eqz v29, :cond_1f0

    .line 1090
    check-cast v17, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    invoke-virtual/range {v17 .. v17}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    goto :goto_1be

    .line 1091
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_1f0
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    move/from16 v29, v0

    if-eqz v29, :cond_207

    .line 1092
    check-cast v17, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/mail/imap/IMAPMessage;->size:I

    goto :goto_1be

    .line 1095
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_207
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move/from16 v29, v0

    if-eqz v29, :cond_218

    .line 1096
    check-cast v17, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    goto :goto_1be

    .line 1098
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_218
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/UID;

    move/from16 v29, v0

    if-eqz v29, :cond_261

    .line 1099
    move-object/from16 v0, v17

    check-cast v0, Lcom/sun/mail/imap/protocol/UID;

    move-object/from16 v26, v0

    .line 1100
    .local v26, "u":Lcom/sun/mail/imap/protocol/UID;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    if-nez v29, :cond_245

    .line 1103
    new-instance v29, Ljava/util/Hashtable;

    invoke-direct/range {v29 .. v29}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1104
    :cond_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    new-instance v31, Ljava/lang/Long;

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide/from16 v32, v0

    invoke-direct/range {v31 .. v33}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1be

    .line 1108
    .end local v26    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_261
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    move/from16 v29, v0

    if-nez v29, :cond_271

    .line 1109
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/BODY;

    move/from16 v29, v0

    if-eqz v29, :cond_1be

    .line 1111
    :cond_271
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/mail/imap/protocol/RFC822DATA;

    move/from16 v29, v0

    if-eqz v29, :cond_2a2

    .line 1113
    check-cast v17, Lcom/sun/mail/imap/protocol/RFC822DATA;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    invoke-virtual/range {v17 .. v17}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v15

    .line 1119
    .local v15, "headerStream":Ljava/io/InputStream;
    :goto_27f
    new-instance v12, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v12}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    .line 1120
    .local v12, "h":Ljavax/mail/internet/InternetHeaders;
    invoke-virtual {v12, v15}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 1121
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    move-object/from16 v29, v0

    if-eqz v29, :cond_291

    if-eqz v4, :cond_2a9

    .line 1122
    :cond_291
    move-object/from16 v0, v20

    iput-object v12, v0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1143
    :cond_295
    if-eqz v4, :cond_2df

    .line 1144
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setHeadersLoaded(Z)V

    goto/16 :goto_1be

    .line 1116
    .end local v12    # "h":Ljavax/mail/internet/InternetHeaders;
    .end local v15    # "headerStream":Ljava/io/InputStream;
    .restart local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_2a2
    check-cast v17, Lcom/sun/mail/imap/protocol/BODY;

    .end local v17    # "item":Lcom/sun/mail/imap/protocol/Item;
    invoke-virtual/range {v17 .. v17}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v15

    .line 1115
    .restart local v15    # "headerStream":Ljava/io/InputStream;
    goto :goto_27f

    .line 1133
    .restart local v12    # "h":Ljavax/mail/internet/InternetHeaders;
    :cond_2a9
    invoke-virtual {v12}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v9

    .line 1134
    .local v9, "e":Ljava/util/Enumeration;
    :cond_2ad
    :goto_2ad
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v29

    if-eqz v29, :cond_295

    .line 1135
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/mail/Header;

    .line 1136
    .local v14, "he":Ljavax/mail/Header;
    invoke-virtual {v14}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2ad

    .line 1137
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    move-object/from16 v29, v0

    .line 1138
    invoke-virtual {v14}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v14}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v32

    .line 1137
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ad

    .line 1147
    .end local v9    # "e":Ljava/util/Enumeration;
    .end local v14    # "he":Ljavax/mail/Header;
    :cond_2df
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_2e1
    array-length v0, v13

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_1be

    .line 1148
    aget-object v29, v13, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V
    :try_end_2f3
    .catchall {:try_start_11a .. :try_end_2f3} :catchall_116

    .line 1147
    add-int/lit8 v19, v19, 0x1

    goto :goto_2e1

    .line 1048
    .end local v8    # "count":I
    .end local v10    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v12    # "h":Ljavax/mail/internet/InternetHeaders;
    .end local v15    # "headerStream":Ljava/io/InputStream;
    .end local v16    # "i":I
    .end local v18    # "j":I
    .end local v19    # "k":I
    .end local v20    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v27    # "unsolicitedFlags":Z
    :catch_2f6
    move-exception v29

    goto/16 :goto_112
.end method

.method private declared-synchronized isHeaderLoaded(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1372
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_8

    .line 1373
    const/4 v0, 0x1

    .line 1375
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-eqz v0, :cond_19

    .line 1376
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    move-result v0

    goto :goto_6

    .line 1377
    :cond_19
    const/4 v0, 0x0

    goto :goto_6

    .line 1372
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadBODYSTRUCTURE()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1256
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    if-eqz v3, :cond_7

    .line 1283
    :goto_5
    monitor-exit p0

    return-void

    .line 1260
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2f

    .line 1262
    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1266
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1268
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :try_end_1d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_1d} :catch_32
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_1d} :catch_3f
    .catchall {:try_start_c .. :try_end_1d} :catchall_2c

    .line 1275
    :try_start_1d
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-nez v3, :cond_4d

    .line 1279
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1280
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v5, "Unable to load BODYSTRUCTURE"

    invoke-direct {v3, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1260
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 1256
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1269
    :catch_32
    move-exception v0

    .line 1270
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_33
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 1271
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_3f
    move-exception v2

    .line 1272
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1273
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1260
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_2c

    goto :goto_5
.end method

.method private declared-synchronized loadEnvelope()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1174
    monitor-enter p0

    :try_start_1
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-eqz v10, :cond_7

    .line 1227
    :cond_5
    monitor-exit p0

    return-void

    .line 1177
    :cond_7
    const/4 v8, 0x0

    :try_start_8
    check-cast v8, [Lcom/sun/mail/iap/Response;

    .line 1180
    .local v8, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3c

    .line 1182
    :try_start_f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    .line 1184
    .local v6, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1186
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v9

    .line 1187
    .local v9, "seqnum":I
    sget-object v10, Lcom/sun/mail/imap/IMAPMessage;->EnvelopeCmd:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 1189
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    array-length v10, v8

    if-lt v3, v10, :cond_3f

    .line 1214
    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1215
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v8, v10

    invoke-virtual {v6, v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_2f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_2f} :catch_7d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_2f} :catch_98
    .catchall {:try_start_f .. :try_end_2f} :catchall_8a

    .line 1180
    :try_start_2f
    monitor-exit v11
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_8a

    .line 1225
    :try_start_30
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-nez v10, :cond_5

    .line 1226
    new-instance v10, Ljavax/mail/MessagingException;

    const-string v11, "Failed to load IMAP envelope"

    invoke-direct {v10, v11}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3c

    .line 1174
    .end local v3    # "i":I
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v8    # "r":[Lcom/sun/mail/iap/Response;
    .end local v9    # "seqnum":I
    :catchall_3c
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1192
    .restart local v3    # "i":I
    .restart local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v8    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v9    # "seqnum":I
    :cond_3f
    :try_start_3f
    aget-object v10, v8, v3

    if-eqz v10, :cond_53

    .line 1193
    aget-object v10, v8, v3

    instance-of v10, v10, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v10, :cond_53

    .line 1194
    aget-object v10, v8, v3

    check-cast v10, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v10}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v10

    if-eq v10, v9, :cond_56

    .line 1189
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1197
    :cond_56
    aget-object v2, v8, v3

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1200
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v1

    .line 1201
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5f
    if-ge v5, v1, :cond_53

    .line 1202
    invoke-virtual {v2, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    .line 1204
    .local v4, "item":Lcom/sun/mail/imap/protocol/Item;
    instance-of v10, v4, Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v10, :cond_70

    .line 1205
    check-cast v4, Lcom/sun/mail/imap/protocol/ENVELOPE;

    .end local v4    # "item":Lcom/sun/mail/imap/protocol/Item;
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 1201
    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 1206
    .restart local v4    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_70
    instance-of v10, v4, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    if-eqz v10, :cond_8d

    .line 1207
    check-cast v4, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    .end local v4    # "item":Lcom/sun/mail/imap/protocol/Item;
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->getDate()Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;
    :try_end_7c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3f .. :try_end_7c} :catch_7d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3f .. :try_end_7c} :catch_98
    .catchall {:try_start_3f .. :try_end_7c} :catchall_8a

    goto :goto_6d

    .line 1216
    .end local v1    # "count":I
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v9    # "seqnum":I
    :catch_7d
    move-exception v0

    .line 1217
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_7e
    new-instance v10, Ljavax/mail/FolderClosedException;

    iget-object v12, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v10

    .line 1180
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_8a
    move-exception v10

    monitor-exit v11
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v10
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_3c

    .line 1208
    .restart local v1    # "count":I
    .restart local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .restart local v3    # "i":I
    .restart local v4    # "item":Lcom/sun/mail/imap/protocol/Item;
    .restart local v5    # "j":I
    .restart local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v9    # "seqnum":I
    :cond_8d
    :try_start_8d
    instance-of v10, v4, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    if-eqz v10, :cond_6d

    .line 1209
    check-cast v4, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    .end local v4    # "item":Lcom/sun/mail/imap/protocol/Item;
    iget v10, v4, Lcom/sun/mail/imap/protocol/RFC822SIZE;->size:I

    iput v10, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I
    :try_end_97
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8d .. :try_end_97} :catch_7d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8d .. :try_end_97} :catch_98
    .catchall {:try_start_8d .. :try_end_97} :catchall_8a

    goto :goto_6d

    .line 1218
    .end local v1    # "count":I
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v9    # "seqnum":I
    :catch_98
    move-exception v7

    .line 1219
    .local v7, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_99
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1220
    new-instance v10, Ljavax/mail/MessagingException;

    invoke-virtual {v7}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_8a
.end method

.method private declared-synchronized loadFlags()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v3, :cond_7

    .line 1352
    :goto_5
    monitor-exit p0

    return-void

    .line 1336
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_22

    .line 1338
    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1342
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1344
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchFlags(I)Ljavax/mail/Flags;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;
    :try_end_1d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_1d} :catch_25
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_1d} :catch_32
    .catchall {:try_start_c .. :try_end_1d} :catchall_1f

    .line 1336
    :try_start_1d
    monitor-exit v4

    goto :goto_5

    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    :try_start_21
    throw v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 1332
    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1345
    :catch_25
    move-exception v0

    .line 1346
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_26
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 1347
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_32
    move-exception v2

    .line 1348
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1349
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_1f
.end method

.method private declared-synchronized loadHeaders()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1289
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-eqz v6, :cond_7

    .line 1326
    :goto_5
    monitor-exit p0

    return-void

    .line 1292
    :cond_7
    const/4 v2, 0x0

    .line 1295
    .local v2, "is":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_39

    .line 1297
    :try_start_d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 1301
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 1303
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1304
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 1305
    const-string v8, "HEADER"

    invoke-direct {p0, v8}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1304
    invoke-virtual {v3, v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 1306
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v0, :cond_2e

    .line 1307
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_2d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_2d} :catch_4d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_2d} :catch_5d
    .catchall {:try_start_d .. :try_end_2d} :catchall_5a

    move-result-object v2

    .line 1295
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_5a

    .line 1322
    if-nez v2, :cond_6b

    .line 1323
    :try_start_31
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "Cannot load header"

    invoke-direct {v6, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 1289
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_39
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1309
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 1310
    const-string v8, "HEADER"

    .line 1309
    invoke-virtual {v3, v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v5

    .line 1311
    .local v5, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v5, :cond_2e

    .line 1312
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3c .. :try_end_4b} :catch_4d
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3c .. :try_end_4b} :catch_5d
    .catchall {:try_start_3c .. :try_end_4b} :catchall_5a

    move-result-object v2

    goto :goto_2e

    .line 1314
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :catch_4d
    move-exception v1

    .line 1315
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4e
    new-instance v6, Ljavax/mail/FolderClosedException;

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 1295
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_5a
    move-exception v6

    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_39

    .line 1316
    :catch_5d
    move-exception v4

    .line 1317
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5e
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 1318
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_5a

    .line 1324
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6b
    :try_start_6b
    new-instance v6, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v6, v2}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 1325
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_39

    goto :goto_5
.end method

.method private declared-synchronized setHeaderLoaded(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1384
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_d

    .line 1385
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    .line 1386
    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1387
    monitor-exit p0

    return-void

    .line 1384
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setHeadersLoaded(Z)V
    .registers 3
    .param p1, "loaded"    # Z

    .prologue
    .line 1365
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1366
    monitor-exit p0

    return-void

    .line 1365
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toSection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1397
    .end local p1    # "what":Ljava/lang/String;
    :goto_4
    return-object p1

    .restart local p1    # "what":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method


# virtual methods
.method _getSession()Ljavax/mail/Session;
    .registers 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method _setFlags(Ljavax/mail/Flags;)V
    .registers 2
    .param p1, "flags"    # Ljavax/mail/Flags;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage;->flags:Ljavax/mail/Flags;

    .line 1433
    return-void
.end method

.method public addFrom([Ljavax/mail/Address;)V
    .registers 4
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 812
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 5
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExpunged()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-eqz v0, :cond_a

    .line 220
    new-instance v0, Ljavax/mail/MessageRemovedException;

    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v0

    .line 221
    :cond_a
    return-void
.end method

.method protected forceCheckExpunged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 231
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_c} :catch_17
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_c} :catch_28
    .catchall {:try_start_5 .. :try_end_c} :catchall_24

    .line 229
    :goto_c
    :try_start_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_24

    .line 238
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage;->expunged:Z

    if-eqz v1, :cond_27

    .line 239
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-direct {v1}, Ljavax/mail/MessageRemovedException;-><init>()V

    throw v1

    .line 232
    :catch_17
    move-exception v0

    .line 233
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_18
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v1

    .line 240
    :cond_27
    return-void

    .line 234
    :catch_28
    move-exception v1

    goto :goto_c
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 820
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 821
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 787
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 788
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 478
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 479
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 409
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 410
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 411
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 413
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getContentMD5()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 491
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 492
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v5

    .line 569
    .local v5, "pk":Z
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 571
    :try_start_b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 575
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 577
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v7

    if-eq v7, v8, :cond_33

    .line 578
    new-instance v7, Lcom/sun/mail/imap/IMAPInputStream;

    const-string v10, "TEXT"

    invoke-direct {p0, v10}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 579
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    if-eqz v11, :cond_2e

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v8, v8, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 578
    :cond_2e
    invoke-direct {v7, p0, v10, v8, v5}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_31
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_31} :catch_7a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_31} :catch_8a
    .catchall {:try_start_b .. :try_end_31} :catchall_87

    :try_start_31
    monitor-exit v9
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_87

    .line 605
    :goto_32
    return-object v7

    .line 581
    :cond_33
    :try_start_33
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 583
    if-eqz v5, :cond_5a

    .line 584
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    const-string v8, "TEXT"

    invoke-direct {p0, v8}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 587
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_49
    if-eqz v0, :cond_4f

    .line 588
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_4e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_33 .. :try_end_4e} :catch_7a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_33 .. :try_end_4e} :catch_8a
    .catchall {:try_start_33 .. :try_end_4e} :catchall_87

    move-result-object v2

    .line 569
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit v9
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_87

    .line 602
    if-nez v2, :cond_98

    .line 603
    new-instance v7, Ljavax/mail/MessagingException;

    const-string v8, "No content"

    invoke-direct {v7, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 586
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    const-string v8, "TEXT"

    invoke-direct {p0, v8}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_49

    .line 590
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_69
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    const-string v8, "TEXT"

    invoke-virtual {v3, v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v6

    .line 591
    .local v6, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v6, :cond_4f

    .line 592
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_78
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5a .. :try_end_78} :catch_7a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5a .. :try_end_78} :catch_8a
    .catchall {:try_start_5a .. :try_end_78} :catchall_87

    move-result-object v2

    goto :goto_4f

    .line 594
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v6    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :catch_7a
    move-exception v1

    .line 595
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_7b
    new-instance v7, Ljavax/mail/FolderClosedException;

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v7

    .line 569
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_87
    move-exception v7

    monitor-exit v9
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_87

    throw v7

    .line 596
    :catch_8a
    move-exception v4

    .line 597
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 598
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_87

    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_98
    move-object v7, v2

    .line 605
    goto :goto_32
.end method

.method public getContentType()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 442
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 443
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 445
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 446
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 448
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :cond_21
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    return-object v1
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 615
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v1, :cond_40

    .line 616
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 617
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 619
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 620
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 619
    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 621
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 627
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :cond_26
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 628
    new-instance v1, Ljavax/activation/DataHandler;

    .line 629
    new-instance v2, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 630
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    .line 629
    invoke-direct {v2, p0, v3, v4, p0}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 628
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;

    .line 646
    :cond_40
    :goto_40
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_74

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 632
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 637
    new-instance v2, Ljavax/activation/DataHandler;

    .line 638
    new-instance v3, Lcom/sun/mail/imap/IMAPNestedMessage;

    .line 639
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 640
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v5, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 641
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    if-nez v1, :cond_77

    const-string v1, "1"

    .line 638
    :goto_69
    invoke-direct {v3, p0, v4, v5, v1}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_73
    .catchall {:try_start_46 .. :try_end_73} :catchall_74

    goto :goto_40

    .line 613
    :catchall_74
    move-exception v1

    monitor-exit p0

    throw v1

    .line 641
    :cond_77
    :try_start_77
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_74

    move-result-object v1

    goto :goto_69
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 505
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 506
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    .line 518
    :goto_9
    return-object v1

    .line 508
    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 509
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 510
    const/4 v1, 0x0

    goto :goto_9

    .line 513
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_22

    .line 518
    :goto_1f
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    goto :goto_9

    .line 514
    :catch_22
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;

    goto :goto_1f
.end method

.method public getDisposition()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 456
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 457
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 469
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 470
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getFetchBlockSize()I
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFetchBlockSize()I

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "filename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 546
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_17

    .line 547
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_17
    if-nez v0, :cond_29

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_29

    .line 549
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_29
    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 848
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 849
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    .line 850
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 848
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 252
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 253
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 762
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 763
    const/4 v0, 0x0

    .line 764
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 706
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 707
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v6, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 751
    :goto_f
    return-object v6

    .line 710
    :cond_10
    const/4 v2, 0x0

    .line 713
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 715
    :try_start_16
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 719
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 721
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 722
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 723
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HEADER.FIELDS ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sun/mail/imap/IMAPMessage;->toSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 722
    invoke-virtual {v3, v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 725
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-eqz v0, :cond_4a

    .line 726
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_49
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_16 .. :try_end_49} :catch_73
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_16 .. :try_end_49} :catch_83
    .catchall {:try_start_16 .. :try_end_49} :catchall_80

    move-result-object v2

    .line 713
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_80

    .line 743
    if-nez v2, :cond_91

    .line 744
    const/4 v6, 0x0

    goto :goto_f

    .line 728
    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 729
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HEADER.LINES ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 728
    invoke-virtual {v3, v6, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v5

    .line 730
    .local v5, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v5, :cond_4a

    .line 731
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_71
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4f .. :try_end_71} :catch_73
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4f .. :try_end_71} :catch_83
    .catchall {:try_start_4f .. :try_end_71} :catchall_80

    move-result-object v2

    goto :goto_4a

    .line 733
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :catch_73
    move-exception v1

    .line 734
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_74
    new-instance v6, Ljavax/mail/FolderClosedException;

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 713
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_80
    move-exception v6

    monitor-exit v7
    :try_end_82
    .catchall {:try_start_74 .. :try_end_82} :catchall_80

    throw v6

    .line 735
    :catch_83
    move-exception v4

    .line 736
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_84
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 737
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_80

    .line 746
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_91
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v6, :cond_9c

    .line 747
    new-instance v6, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v6}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 748
    :cond_9c
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v6, v2}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V

    .line 749
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPMessage;->setHeaderLoaded(Ljava/lang/String;)V

    .line 751
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v6, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f
.end method

.method public getInReplyTo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 428
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 429
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    return-object v0
.end method

.method public getLineCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 400
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadBODYSTRUCTURE()V

    .line 401
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 830
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 831
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 797
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 798
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageCacheLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 531
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 532
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 840
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 841
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 807
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadHeaders()V

    .line 808
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPeek()Z
    .registers 2

    .prologue
    .line 899
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 147
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 148
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-nez v0, :cond_17

    .line 149
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v1

    .line 151
    :cond_17
    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 371
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 372
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    if-nez v0, :cond_c

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_b
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .registers 3
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 289
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_13

    .line 290
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 296
    :goto_12
    return-object v0

    .line 291
    :cond_13
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_20

    .line 292
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_12

    .line 293
    :cond_20
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2d

    .line 294
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    goto :goto_12

    .line 296
    :cond_2d
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    goto :goto_12
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 314
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 315
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPMessage;->aaclone([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 269
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 270
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_14

    .line 271
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 273
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getSentDate()Ljava/util/Date;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 355
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 356
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    if-nez v0, :cond_e

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_d
.end method

.method protected getSequenceNumber()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    return v0
.end method

.method public getSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 386
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 387
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 388
    :cond_b
    iget v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 328
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 329
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    .line 342
    :goto_9
    return-object v1

    .line 331
    :cond_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadEnvelope()V

    .line 332
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 333
    const/4 v1, 0x0

    goto :goto_9

    .line 337
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1f} :catch_22

    .line 342
    :goto_1f
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    goto :goto_9

    .line 338
    :catch_22
    move-exception v0

    .line 339
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    goto :goto_1f
.end method

.method protected getUID()J
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    return-wide v0
.end method

.method public declared-synchronized invalidateHeaders()V
    .registers 2

    .prologue
    .line 910
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage;->headersLoaded:Z

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->loadedHeaders:Ljava/util/Hashtable;

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->receivedDate:Ljava/util/Date;

    .line 915
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->size:I

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->type:Ljava/lang/String;

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->subject:Ljava/lang/String;

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage;->description:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    .line 919
    monitor-exit p0

    return-void

    .line 910
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isREV1()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 161
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-nez v0, :cond_10

    .line 162
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-direct {v1, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;)V

    throw v1

    .line 164
    :cond_10
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v1

    return v1
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .registers 3
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 858
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 859
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPMessage;->loadFlags()V

    .line 860
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    .line 858
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentID(Ljava/lang/String;)V
    .registers 4
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .registers 4
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .registers 4
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .registers 4
    .param p1, "content"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .registers 4
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setExpunged(Z)V
    .registers 3
    .param p1, "set"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setExpunged(Z)V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    .line 215
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .registers 10
    .param p1, "flag"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 869
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_27

    .line 871
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 872
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 873
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(ILjavax/mail/Flags;Z)V
    :try_end_14
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_14} :catch_17
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_14} :catch_2a
    .catchall {:try_start_6 .. :try_end_14} :catchall_24

    .line 869
    :try_start_14
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_24

    .line 880
    monitor-exit p0

    return-void

    .line 874
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_17
    move-exception v0

    .line 875
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_18
    new-instance v3, Ljavax/mail/FolderClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 869
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v3

    monitor-exit p0

    throw v3

    .line 876
    :catch_2a
    move-exception v2

    .line 877
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2b
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_24
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .registers 4
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setMessageNumber(I)V
    .registers 2
    .param p1, "msgnum"    # I

    .prologue
    .line 200
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->setMessageNumber(I)V

    .line 201
    return-void
.end method

.method public declared-synchronized setPeek(Z)V
    .registers 3
    .param p1, "peek"    # Z

    .prologue
    .line 889
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPMessage;->peek:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 890
    monitor-exit p0

    return-void

    .line 889
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .registers 5
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .registers 4
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSender(Ljavax/mail/Address;)V
    .registers 4
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .registers 4
    .param p1, "d"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setSequenceNumber(I)V
    .registers 2
    .param p1, "seqnum"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/sun/mail/imap/IMAPMessage;->seqnum:I

    .line 193
    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPMessage is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUID(J)V
    .registers 4
    .param p1, "uid"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPMessage;->uid:J

    .line 209
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 15
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v4, 0x0

    .line 660
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v7

    .line 663
    .local v7, "pk":Z
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 665
    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    .line 667
    .local v5, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 669
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 671
    if-eqz v7, :cond_34

    .line 672
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v9

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v5, v9, v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 675
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_23
    if-eqz v0, :cond_29

    .line 676
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_28
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_28} :catch_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_28} :catch_5f
    .catchall {:try_start_a .. :try_end_28} :catchall_5c

    move-result-object v4

    .line 663
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_5c

    .line 690
    if-nez v4, :cond_6d

    .line 691
    new-instance v9, Ljavax/mail/MessagingException;

    const-string v10, "No content"

    invoke-direct {v9, v10}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 674
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v9

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPMessage;->sectionId:Ljava/lang/String;

    invoke-virtual {v5, v9, v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_23

    .line 678
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_3f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;

    move-result-object v8

    .line 679
    .local v8, "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    if-eqz v8, :cond_29

    .line 680
    invoke-virtual {v8}, Lcom/sun/mail/imap/protocol/RFC822DATA;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_4d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_34 .. :try_end_4d} :catch_4f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_34 .. :try_end_4d} :catch_5f
    .catchall {:try_start_34 .. :try_end_4d} :catchall_5c

    move-result-object v4

    goto :goto_29

    .line 682
    .end local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v8    # "rd":Lcom/sun/mail/imap/protocol/RFC822DATA;
    :catch_4f
    move-exception v2

    .line 683
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_50
    new-instance v9, Ljavax/mail/FolderClosedException;

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPMessage;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v9

    .line 663
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_5c
    move-exception v9

    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_5c

    throw v9

    .line 684
    :catch_5f
    move-exception v6

    .line 685
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_60
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPMessage;->forceCheckExpunged()V

    .line 686
    new-instance v9, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_5c

    .line 694
    .end local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6d
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 696
    .local v1, "bytes":[B
    :goto_71
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_79

    .line 698
    return-void

    .line 697
    :cond_79
    const/4 v9, 0x0

    invoke-virtual {p1, v1, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_71
.end method
