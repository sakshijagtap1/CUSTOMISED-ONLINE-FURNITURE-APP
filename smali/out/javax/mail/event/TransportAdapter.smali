.class public abstract Ljavax/mail/event/TransportAdapter;
.super Ljava/lang/Object;
.source "TransportAdapter.java"

# interfaces
.implements Ljavax/mail/event/TransportListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageDelivered(Ljavax/mail/event/TransportEvent;)V
    .registers 2
    .param p1, "e"    # Ljavax/mail/event/TransportEvent;

    .prologue
    .line 52
    return-void
.end method

.method public messageNotDelivered(Ljavax/mail/event/TransportEvent;)V
    .registers 2
    .param p1, "e"    # Ljavax/mail/event/TransportEvent;

    .prologue
    .line 53
    return-void
.end method

.method public messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V
    .registers 2
    .param p1, "e"    # Ljavax/mail/event/TransportEvent;

    .prologue
    .line 54
    return-void
.end method
