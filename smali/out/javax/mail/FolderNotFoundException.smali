.class public Ljavax/mail/FolderNotFoundException;
.super Ljavax/mail/MessagingException;
.source "FolderNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x68f0e358302dafbL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/Folder;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "folder"    # Ljavax/mail/Folder;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object p2, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;)V
    .registers 2
    .param p1, "folder"    # Ljavax/mail/Folder;

    .prologue
    .line 70
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 71
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .registers 3
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    .line 84
    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
