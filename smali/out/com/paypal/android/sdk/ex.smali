.class public Lcom/paypal/android/sdk/ex;
.super Ljava/text/SimpleDateFormat;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x4f3cb2c27f436bffL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/ex;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ex;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/ex;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/TimeZone;)V
    .registers 4

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Lcom/paypal/android/sdk/ex;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .registers 10

    const/4 v0, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-array v3, v8, [Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v2, v3, v1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v3, v7

    const/4 v2, 0x2

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    aput-object v4, v3, v2

    move v2, v1

    :goto_1c
    if-ge v2, v8, :cond_5f

    aget-object v1, v3, v2

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    :try_start_2a
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2d
    .catch Ljava/text/ParseException; {:try_start_2a .. :try_end_2d} :catch_32

    move-result-object v1

    if-eqz v1, :cond_5b

    move-object v0, v1

    goto :goto_6

    :catch_32
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unsuccessful attempt to parse date \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while using format:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c

    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method
