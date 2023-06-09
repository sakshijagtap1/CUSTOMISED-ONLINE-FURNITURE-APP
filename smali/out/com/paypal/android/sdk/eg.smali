.class public final Lcom/paypal/android/sdk/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/paypal/android/sdk/eg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/eg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/eg;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/paypal/android/sdk/eg;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    iget-object v1, p0, Lcom/paypal/android/sdk/eg;->b:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_33
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_33} :catch_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_33} :catch_45
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_33} :catch_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_33} :catch_3b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_33} :catch_35
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_33} :catch_3d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_33} :catch_41

    move-result-object v0

    goto :goto_3

    :catch_35
    move-exception v0

    :goto_36
    invoke-static {v0}, Lcom/paypal/android/sdk/eg;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_3b
    move-exception v0

    goto :goto_36

    :catch_3d
    move-exception v0

    goto :goto_36

    :catch_3f
    move-exception v0

    goto :goto_36

    :catch_41
    move-exception v0

    goto :goto_36

    :catch_43
    move-exception v0

    goto :goto_36

    :catch_45
    move-exception v0

    goto :goto_36
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    iget-object v1, p0, Lcom/paypal/android/sdk/eg;->b:Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_33
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_33} :catch_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_33} :catch_46
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_33} :catch_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_33} :catch_3c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_33} :catch_3a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_33} :catch_3e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_33} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_33} :catch_40

    goto :goto_3

    :catch_34
    move-exception v0

    :goto_35
    invoke-static {v0}, Lcom/paypal/android/sdk/eg;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_3a
    move-exception v0

    goto :goto_35

    :catch_3c
    move-exception v0

    goto :goto_35

    :catch_3e
    move-exception v0

    goto :goto_35

    :catch_40
    move-exception v0

    goto :goto_35

    :catch_42
    move-exception v0

    goto :goto_35

    :catch_44
    move-exception v0

    goto :goto_35

    :catch_46
    move-exception v0

    goto :goto_35
.end method
