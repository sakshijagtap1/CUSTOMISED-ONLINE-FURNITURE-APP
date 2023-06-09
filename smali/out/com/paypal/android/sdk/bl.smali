.class public Lcom/paypal/android/sdk/bl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/paypal/android/sdk/bl;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/bl;->b:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/bl;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bl;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/bl;->a:Lcom/paypal/android/sdk/bl;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/bl;->c:[B

    iput-object v0, p0, Lcom/paypal/android/sdk/bl;->c:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/paypal/android/sdk/bl;->c:[B

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/paypal/android/sdk/bl;->c:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v3, v0

    :goto_1b
    if-ltz v3, :cond_43

    add-int/lit8 v0, v3, -0x1

    if-gez v0, :cond_22

    move v0, v1

    :cond_22
    iget-object v4, p0, Lcom/paypal/android/sdk/bl;->c:[B

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v4, v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_39

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :catch_39
    move-exception v0

    sget-object v1, Lcom/paypal/android/sdk/bl;->b:Ljava/lang/String;

    const-string v2, "PPRiskDataBitSet initialize failed"

    invoke-static {v1, v2, v0}, Lcom/paypal/android/sdk/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v6, p0, Lcom/paypal/android/sdk/bl;->c:[B

    :cond_43
    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/bm;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/bm;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/paypal/android/sdk/bl;->c:[B

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-object v3, p0, Lcom/paypal/android/sdk/bl;->c:[B

    array-length v3, v3

    if-lt v2, v3, :cond_14

    move v0, v1

    goto :goto_c

    :cond_14
    iget-object v3, p0, Lcom/paypal/android/sdk/bl;->c:[B

    aget-byte v2, v3, v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/bm;->a()I

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v0, v3

    int-to-byte v3, v3

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_c
.end method
