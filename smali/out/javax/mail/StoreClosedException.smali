.class public Ljavax/mail/StoreClosedException;
.super Ljavax/mail/MessagingException;
.source "StoreClosedException.java"


# static fields
.field private static final serialVersionUID:J = -0x2ba6adaa29ac70dfL


# instance fields
.field private transient store:Ljavax/mail/Store;


# direct methods
.method public constructor <init>(Ljavax/mail/Store;)V
    .registers 3
    .param p1, "store"    # Ljavax/mail/Store;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Store;Ljava/lang/String;)V
    .registers 3
    .param p1, "store"    # Ljavax/mail/Store;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Ljavax/mail/StoreClosedException;->store:Ljavax/mail/Store;

    .line 79
    return-void
.end method


# virtual methods
.method public getStore()Ljavax/mail/Store;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/mail/StoreClosedException;->store:Ljavax/mail/Store;

    return-object v0
.end method
