.class public Ljavax/mail/Provider$Type;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final STORE:Ljavax/mail/Provider$Type;

.field public static final TRANSPORT:Ljavax/mail/Provider$Type;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 64
    new-instance v0, Ljavax/mail/Provider$Type;

    const-string v1, "STORE"

    invoke-direct {v0, v1}, Ljavax/mail/Provider$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    .line 65
    new-instance v0, Ljavax/mail/Provider$Type;

    const-string v1, "TRANSPORT"

    invoke-direct {v0, v1}, Ljavax/mail/Provider$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljavax/mail/Provider$Type;->type:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/mail/Provider$Type;->type:Ljava/lang/String;

    return-object v0
.end method
