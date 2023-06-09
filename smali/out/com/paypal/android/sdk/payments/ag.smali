.class final enum Lcom/paypal/android/sdk/payments/ag;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/payments/ag;

.field public static final enum b:Lcom/paypal/android/sdk/payments/ag;

.field public static final enum c:Lcom/paypal/android/sdk/payments/ag;

.field public static final enum d:Lcom/paypal/android/sdk/payments/ag;

.field private static final synthetic e:[Lcom/paypal/android/sdk/payments/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/payments/ag;

    const-string v1, "FUTURE_PAYMENTS"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/payments/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/payments/ag;->a:Lcom/paypal/android/sdk/payments/ag;

    new-instance v0, Lcom/paypal/android/sdk/payments/ag;

    const-string v1, "FINANCIAL_INSTRUMENTS"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/payments/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/payments/ag;->b:Lcom/paypal/android/sdk/payments/ag;

    new-instance v0, Lcom/paypal/android/sdk/payments/ag;

    const-string v1, "SEND_MONEY"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/payments/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/payments/ag;->c:Lcom/paypal/android/sdk/payments/ag;

    new-instance v0, Lcom/paypal/android/sdk/payments/ag;

    const-string v1, "REQUEST_MONEY"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/payments/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/payments/ag;->d:Lcom/paypal/android/sdk/payments/ag;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/paypal/android/sdk/payments/ag;

    sget-object v1, Lcom/paypal/android/sdk/payments/ag;->a:Lcom/paypal/android/sdk/payments/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/payments/ag;->b:Lcom/paypal/android/sdk/payments/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/payments/ag;->c:Lcom/paypal/android/sdk/payments/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/payments/ag;->d:Lcom/paypal/android/sdk/payments/ag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/paypal/android/sdk/payments/ag;->e:[Lcom/paypal/android/sdk/payments/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/ag;
    .registers 2

    const-class v0, Lcom/paypal/android/sdk/payments/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/ag;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/payments/ag;
    .registers 1

    sget-object v0, Lcom/paypal/android/sdk/payments/ag;->e:[Lcom/paypal/android/sdk/payments/ag;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/payments/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/payments/ag;

    return-object v0
.end method
