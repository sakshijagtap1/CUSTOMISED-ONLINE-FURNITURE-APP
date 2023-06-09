.class public Lcom/paypal/android/sdk/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/bc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/paypal/android/sdk/bb;
    .registers 2

    new-instance v0, Lcom/paypal/android/sdk/bg;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bg;-><init>()V

    return-object v0
.end method
