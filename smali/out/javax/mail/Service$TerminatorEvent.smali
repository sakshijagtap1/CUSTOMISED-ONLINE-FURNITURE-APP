.class Ljavax/mail/Service$TerminatorEvent;
.super Ljavax/mail/event/MailEvent;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TerminatorEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4ce9c033019effa0L


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 584
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .registers 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 588
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 589
    return-void
.end method
