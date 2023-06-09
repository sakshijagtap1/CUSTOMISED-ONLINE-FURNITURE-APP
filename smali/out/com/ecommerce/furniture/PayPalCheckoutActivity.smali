.class public Lcom/ecommerce/furniture/PayPalCheckoutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PayPalCheckoutActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MY_SOCKET_TIMEOUT_MS:I = 0x1388

.field private static final SERVER_PATH:Ljava/lang/String; = "Path_to_Server_To_Store_Token"

.field private static final TAG:Ljava/lang/String;

.field private static config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;


# instance fields
.field private totalCostPrice:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    const-class v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->$assertionsDisabled:Z

    .line 39
    const-class v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    const-string v1, "mock"

    .line 48
    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    const-string v1, "ENTER PAY PAL CLIENT ID"

    .line 49
    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->clientId(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 47
    return-void

    .line 37
    :cond_27
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/ecommerce/furniture/PayPalCheckoutActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->initializePayPalPayment()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createRequestErrorListener()Lcom/android/volley/Response$ErrorListener;
    .registers 2

    .prologue
    .line 161
    new-instance v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$3;

    invoke-direct {v0, p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity$3;-><init>(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V

    return-object v0
.end method

.method private createRequestSuccessListener()Lcom/android/volley/Response$Listener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;

    invoke-direct {v0, p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity$2;-><init>(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V

    return-object v0
.end method

.method private initializePayPalPayment()V
    .registers 7

    .prologue
    .line 78
    new-instance v1, Lcom/paypal/android/sdk/payments/PayPalPayment;

    new-instance v2, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->totalCostPrice:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-string v3, "USD"

    const-string v4, "Female Cloths"

    const-string v5, "sale"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/paypal/android/sdk/payments/PayPalPayment;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v1, "payment":Lcom/paypal/android/sdk/payments/PayPalPayment;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/paypal/android/sdk/payments/PaymentActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.paypal.android.sdk.paypalConfiguration"

    sget-object v3, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const-string v2, "com.paypal.android.sdk.payment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method

.method private sendPaymentVerificationToServer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PAYMENT_ID"

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "PAYMENT_STATE"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/ecommerce/furniture/network/GsonRequest;

    const/4 v1, 0x1

    const-string v2, "Path_to_Server_To_Store_Token"

    const-class v3, Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;

    .line 131
    invoke-direct {p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->createRequestSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 132
    invoke-direct {p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->createRequestErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/ecommerce/furniture/network/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 134
    .local v0, "serverRequest":Lcom/ecommerce/furniture/network/GsonRequest;, "Lcom/ecommerce/furniture/network/GsonRequest<Lcom/ecommerce/furniture/jsonEntityObjects/ServerObject;>;"
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x1388

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v5}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/ecommerce/furniture/network/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 139
    invoke-static {p0}, Lcom/ecommerce/furniture/network/VolleySingleton;->getInstance(Landroid/content/Context;)Lcom/ecommerce/furniture/network/VolleySingleton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ecommerce/furniture/network/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    const/4 v8, -0x1

    if-ne p2, v8, :cond_76

    .line 88
    const-string v8, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    .line 89
    .local v1, "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    if-eqz v1, :cond_6c

    .line 91
    :try_start_d
    const-string v8, "paymentExample"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PaymentConfirmation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "jsonPaymentResponse":Ljava/lang/String;
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 95
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 97
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v8, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;

    invoke-virtual {v3, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;

    .line 98
    .local v7, "responseObject":Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;
    if-eqz v7, :cond_6c

    .line 99
    invoke-virtual {v7}, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->getResponse()Lcom/ecommerce/furniture/jsonEntityObjects/response;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ecommerce/furniture/jsonEntityObjects/response;->getId()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "paymentId":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;->getResponse()Lcom/ecommerce/furniture/jsonEntityObjects/response;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ecommerce/furniture/jsonEntityObjects/response;->getState()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "paymentState":Ljava/lang/String;
    sget-object v8, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Log payment id and state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, v5, v6}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->sendPaymentVerificationToServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_6c} :catch_6d

    .line 119
    .end local v0    # "builder":Lcom/google/gson/GsonBuilder;
    .end local v1    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "jsonPaymentResponse":Ljava/lang/String;
    .end local v5    # "paymentId":Ljava/lang/String;
    .end local v6    # "paymentState":Ljava/lang/String;
    .end local v7    # "responseObject":Lcom/ecommerce/furniture/jsonEntityObjects/PaymentResponseObject;
    :cond_6c
    :goto_6c
    return-void

    .line 108
    .restart local v1    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    :catch_6d
    move-exception v2

    .line 109
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "paymentExample"

    const-string v9, "an extremely unlikely failure occurred: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    .line 113
    .end local v1    # "confirm":Lcom/paypal/android/sdk/payments/PaymentConfirmation;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_76
    if-nez p2, :cond_80

    .line 114
    const-string v8, "paymentExample"

    const-string v9, "The user canceled."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 116
    :cond_80
    const/4 v8, 0x2

    if-ne p2, v8, :cond_6c

    .line 117
    const-string v8, "paymentExample"

    const-string v9, "An invalid Payment or PayPalConfiguration was submitted. Please see the docs."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v2, 0x7f04001e

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->setContentView(I)V

    .line 56
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->setRequestedOrientation(I)V

    .line 58
    const v2, 0x7f060051

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TOTAL_PRICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->totalCostPrice:D

    .line 61
    sget-object v2, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Price "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->totalCostPrice:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.paypal.android.sdk.paypalConfiguration"

    sget-object v3, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->config:Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    const v2, 0x7f0c00b5

    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 68
    .local v1, "payPalButton":Landroid/widget/Button;
    sget-boolean v2, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_67

    if-nez v1, :cond_67

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 69
    :cond_67
    new-instance v2, Lcom/ecommerce/furniture/PayPalCheckoutActivity$1;

    invoke-direct {v2, p0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity$1;-><init>(Lcom/ecommerce/furniture/PayPalCheckoutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/PayPalCheckoutActivity;->stopService(Landroid/content/Intent;)Z

    .line 172
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 173
    return-void
.end method
