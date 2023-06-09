.class public final Lcom/paypal/android/sdk/fi;
.super Lcom/paypal/android/sdk/fq;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/paypal/android/sdk/df;->j:Lcom/paypal/android/sdk/df;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/paypal/android/sdk/fq;-><init>(Lcom/paypal/android/sdk/df;Lcom/paypal/android/sdk/cx;Lcom/paypal/android/sdk/b;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/paypal/android/sdk/fi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/paypal/android/sdk/fi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()V
    .registers 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/fi;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/fi;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    const-string v0, "mockDeleteCreditCardResponse"

    return-object v0
.end method
