.class Ljavax/mail/Session$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljavax/mail/StreamLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->loadProviders(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/mail/Session;


# direct methods
.method constructor <init>(Ljavax/mail/Session;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/mail/Session$1;->this$0:Ljavax/mail/Session;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Ljavax/mail/Session$1;->this$0:Ljavax/mail/Session;

    invoke-static {v0, p1}, Ljavax/mail/Session;->access$0(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 883
    return-void
.end method
