.class public Ljavax/mail/event/MessageChangedEvent;
.super Ljavax/mail/event/MailEvent;
.source "MessageChangedEvent.java"


# static fields
.field public static final ENVELOPE_CHANGED:I = 0x2

.field public static final FLAGS_CHANGED:I = 0x1

.field private static final serialVersionUID:J = -0x450aa78f41850e84L


# instance fields
.field protected transient msg:Ljavax/mail/Message;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjavax/mail/Message;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;

    .line 82
    iput p2, p0, Ljavax/mail/event/MessageChangedEvent;->type:I

    .line 83
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .registers 2
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Ljavax/mail/event/MessageChangedListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/MessageChangedListener;->messageChanged(Ljavax/mail/event/MessageChangedEvent;)V

    .line 106
    return-void
.end method

.method public getMessage()Ljavax/mail/Message;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;

    return-object v0
.end method

.method public getMessageChangeType()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Ljavax/mail/event/MessageChangedEvent;->type:I

    return v0
.end method
