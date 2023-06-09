.class public final enum Lcom/paypal/android/sdk/ay;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/ay;

.field public static final enum b:Lcom/paypal/android/sdk/ay;

.field public static final enum c:Lcom/paypal/android/sdk/ay;

.field private static enum d:Lcom/paypal/android/sdk/ay;

.field private static final synthetic f:[Lcom/paypal/android/sdk/ay;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/paypal/android/sdk/ay;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/paypal/android/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/ay;

    const-string v1, "PAYPAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/paypal/android/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/paypal/android/sdk/ay;->b:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/ay;

    const-string v1, "EBAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v5, v2}, Lcom/paypal/android/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ay;

    new-instance v0, Lcom/paypal/android/sdk/ay;

    const-string v1, "MSDK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v6, v2}, Lcom/paypal/android/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/paypal/android/sdk/ay;->c:Lcom/paypal/android/sdk/ay;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/paypal/android/sdk/ay;

    sget-object v1, Lcom/paypal/android/sdk/ay;->a:Lcom/paypal/android/sdk/ay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/ay;->b:Lcom/paypal/android/sdk/ay;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/ay;->d:Lcom/paypal/android/sdk/ay;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/ay;->c:Lcom/paypal/android/sdk/ay;

    aput-object v1, v0, v6

    sput-object v0, Lcom/paypal/android/sdk/ay;->f:[Lcom/paypal/android/sdk/ay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/paypal/android/sdk/ay;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/ay;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ay;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/ay;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/ay;->f:[Lcom/paypal/android/sdk/ay;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/ay;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/paypal/android/sdk/ay;->e:I

    return v0
.end method
