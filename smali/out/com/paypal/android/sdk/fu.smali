.class public final Lcom/paypal/android/sdk/fu;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final b:Lcom/paypal/android/sdk/g;

.field private static c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/paypal/android/sdk/g;

    const-class v1, Lcom/paypal/android/sdk/fw;

    sget-object v2, Lcom/paypal/android/sdk/v;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/g;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    sput-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    new-instance v0, Lcom/paypal/android/sdk/fv;

    invoke-direct {v0}, Lcom/paypal/android/sdk/fv;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/fu;->c:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/paypal/android/sdk/fw;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/paypal/android/sdk/bz;->e:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bj:Lcom/paypal/android/sdk/fw;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lcom/paypal/android/sdk/bz;->b:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aK:Lcom/paypal/android/sdk/fw;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_2a
    sget-object v0, Lcom/paypal/android/sdk/bz;->a:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    sget-object v2, Lcom/paypal/android/sdk/fw;->aQ:Lcom/paypal/android/sdk/fw;

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_41
    sget-object v0, Lcom/paypal/android/sdk/bz;->c:Lcom/paypal/android/sdk/bz;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    sget-object v1, Lcom/paypal/android/sdk/fw;->bv:Lcom/paypal/android/sdk/fw;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_56
    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    sget-object v1, Lcom/paypal/android/sdk/fw;->aQ:Lcom/paypal/android/sdk/fw;

    invoke-virtual {v0, p0, v1}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/g;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/paypal/android/sdk/fu;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    sput-boolean v0, Lcom/paypal/android/sdk/fu;->a:Z

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/fu;->b:Lcom/paypal/android/sdk/g;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method
