.class final synthetic Lcom/paypal/android/sdk/payments/ay;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/paypal/android/sdk/do;->values()[Lcom/paypal/android/sdk/do;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/paypal/android/sdk/payments/ay;->b:[I

    :try_start_9
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->b:[I

    sget-object v1, Lcom/paypal/android/sdk/do;->a:Lcom/paypal/android/sdk/do;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/do;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_de

    :goto_14
    :try_start_14
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->b:[I

    sget-object v1, Lcom/paypal/android/sdk/do;->b:Lcom/paypal/android/sdk/do;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/do;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_db

    :goto_1f
    invoke-static {}, Lcom/paypal/android/sdk/payments/bg;->values()[Lcom/paypal/android/sdk/payments/bg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    :try_start_28
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->c:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_d8

    :goto_33
    :try_start_33
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->d:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_d5

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->h:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_d2

    :goto_49
    :try_start_49
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->i:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_d0

    :goto_54
    :try_start_54
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->k:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_ce

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->a:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_cc

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->b:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_ca

    :goto_75
    :try_start_75
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->e:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_81} :catch_c8

    :goto_81
    :try_start_81
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->f:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8d} :catch_c6

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->g:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_99} :catch_c4

    :goto_99
    :try_start_99
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->l:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a5} :catch_c2

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->j:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b1} :catch_c0

    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/paypal/android/sdk/payments/ay;->a:[I

    sget-object v1, Lcom/paypal/android/sdk/payments/bg;->m:Lcom/paypal/android/sdk/payments/bg;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/bg;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bd} :catch_be

    :goto_bd
    return-void

    :catch_be
    move-exception v0

    goto :goto_bd

    :catch_c0
    move-exception v0

    goto :goto_b1

    :catch_c2
    move-exception v0

    goto :goto_a5

    :catch_c4
    move-exception v0

    goto :goto_99

    :catch_c6
    move-exception v0

    goto :goto_8d

    :catch_c8
    move-exception v0

    goto :goto_81

    :catch_ca
    move-exception v0

    goto :goto_75

    :catch_cc
    move-exception v0

    goto :goto_6a

    :catch_ce
    move-exception v0

    goto :goto_5f

    :catch_d0
    move-exception v0

    goto :goto_54

    :catch_d2
    move-exception v0

    goto/16 :goto_49

    :catch_d5
    move-exception v0

    goto/16 :goto_3e

    :catch_d8
    move-exception v0

    goto/16 :goto_33

    :catch_db
    move-exception v0

    goto/16 :goto_1f

    :catch_de
    move-exception v0

    goto/16 :goto_14
.end method
