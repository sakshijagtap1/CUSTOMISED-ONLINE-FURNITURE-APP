.class public Lcom/ecommerce/furniture/PaymentsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PaymentsActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final FULL_WALLET_REQUEST_CODE:I = 0x379

.field private static final REQUEST_CODE_MASKED_WALLET:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cartTotal:D

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mWalletFragment:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

.field private maskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/ecommerce/furniture/PaymentsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/PaymentsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ecommerce/furniture/PaymentsActivity;->cartTotal:D

    return-void
.end method

.method static synthetic access$000(Lcom/ecommerce/furniture/PaymentsActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/ecommerce/furniture/PaymentsActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->initializeWalletFragment()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/ecommerce/furniture/PaymentsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private detailedMaskedWalletInformation(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 2
    .param p1, "maskedWallet"    # Lcom/google/android/gms/wallet/MaskedWallet;

    .prologue
    .line 252
    return-void
.end method

.method private generateFullWalletRequest()Lcom/google/android/gms/wallet/FullWalletRequest;
    .registers 7

    .prologue
    .line 155
    invoke-static {}, Lcom/google/android/gms/wallet/FullWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/ecommerce/furniture/PaymentsActivity;->maskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v1

    .line 157
    invoke-static {}, Lcom/google/android/gms/wallet/Cart;->newBuilder()Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v2

    const-string v3, "USD"

    .line 158
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/Cart$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v2

    iget-wide v4, p0, Lcom/ecommerce/furniture/PaymentsActivity;->cartTotal:D

    .line 159
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/Cart$Builder;->setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/wallet/Cart$Builder;->build()Lcom/google/android/gms/wallet/Cart;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v0

    .line 163
    .local v0, "request":Lcom/google/android/gms/wallet/FullWalletRequest;
    return-object v0
.end method

.method private getWalletFragmentOption()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 105
    new-instance v2, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-direct {v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    const/4 v3, 0x5

    .line 106
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setBuyButtonText(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v2

    const/4 v3, 0x4

    .line 107
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setBuyButtonAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v2

    const/4 v3, -0x1

    .line 108
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setBuyButtonWidth(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v1

    .line 110
    .local v1, "walletFragmentStyle":Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    invoke-static {}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    move-result-object v2

    const/4 v3, 0x3

    .line 111
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setFragmentStyle(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setMode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->build()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v0

    .line 116
    .local v0, "walletFragmentOptions":Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
    return-object v0
.end method

.method private initializeWalletFragment()V
    .registers 5

    .prologue
    .line 120
    invoke-static {}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v1

    .line 121
    invoke-direct {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->sendMaskedWalletRequest()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->setMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->setMaskedWalletRequestCode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v1

    const-string v2, "Inducesmile"

    .line 123
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v0

    .line 124
    .local v0, "startParamsBuilder":Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    iget-object v1, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mWalletFragment:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->build()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c00b6

    iget-object v3, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mWalletFragment:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 128
    return-void
.end method

.method private makeFullWalletRequest()V
    .registers 5

    .prologue
    .line 151
    sget-object v0, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    iget-object v1, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->generateFullWalletRequest()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v2

    const/16 v3, 0x379

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/wallet/Payments;->loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    .line 152
    return-void
.end method

.method private sendMaskedWalletRequest()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 131
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    const-string v2, "Awesome Bike Store"

    .line 132
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v3}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v3}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    const-string v2, "USD"

    .line 135
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ecommerce/furniture/PaymentsActivity;->cartTotal:D

    .line 136
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/google/android/gms/wallet/Cart;->newBuilder()Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v2

    const-string v3, "USD"

    .line 141
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/Cart$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v2

    iget-wide v4, p0, Lcom/ecommerce/furniture/PaymentsActivity;->cartTotal:D

    .line 142
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/Cart$Builder;->setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/wallet/Cart$Builder;->build()Lcom/google/android/gms/wallet/Cart;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    .line 145
    invoke-direct {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->useStripePaymentGatewayForProcessing()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setPaymentMethodTokenizationParameters(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v0

    .line 147
    .local v0, "request":Lcom/google/android/gms/wallet/MaskedWalletRequest;
    return-object v0
.end method

.method private useStripePaymentGatewayForProcessing()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .registers 5

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->newBuilder()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->setPaymentMethodTokenizationType(I)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v1

    const-string v2, "gateway"

    const-string v3, "stripe"

    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v1

    const-string v2, "stripe:publishableKey"

    const-string v3, "key"

    .line 98
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v1

    const-string v2, "stripe:version"

    const-string v3, "version"

    .line 99
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->build()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    .line 101
    .local v0, "parameters":Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    return-object v0
.end method


# virtual methods
.method handleError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_10

    .line 248
    :goto_3
    return-void

    .line 235
    :pswitch_4
    const-string v0, "Error with your payment"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 233
    nop

    :pswitch_data_10
    .packed-switch 0x196
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 197
    const/4 v0, -0x1

    .line 198
    .local v0, "errorCode":I
    if-eqz p3, :cond_a

    .line 199
    const-string v2, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    const/4 v3, -0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 201
    :cond_a
    sparse-switch p1, :sswitch_data_3c

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    :cond_10
    :goto_10
    :pswitch_10
    return-void

    .line 203
    :sswitch_11
    packed-switch p2, :pswitch_data_46

    .line 217
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/PaymentsActivity;->handleError(I)V

    goto :goto_10

    .line 205
    :pswitch_18
    sget-object v2, Lcom/ecommerce/furniture/PaymentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "Testing for output"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p3, :cond_10

    .line 207
    const-string v2, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wallet/MaskedWallet;

    iput-object v2, p0, Lcom/ecommerce/furniture/PaymentsActivity;->maskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    .line 210
    iget-object v2, p0, Lcom/ecommerce/furniture/PaymentsActivity;->maskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-virtual {v2}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "googleTransactionId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ecommerce/furniture/PaymentsActivity;->maskedWallet:Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-direct {p0, v2}, Lcom/ecommerce/furniture/PaymentsActivity;->detailedMaskedWalletInformation(Lcom/google/android/gms/wallet/MaskedWallet;)V

    goto :goto_10

    .line 223
    .end local v1    # "googleTransactionId":Ljava/lang/String;
    :sswitch_37
    invoke-virtual {p0, v0}, Lcom/ecommerce/furniture/PaymentsActivity;->handleError(I)V

    goto :goto_10

    .line 201
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_37
        0x3e8 -> :sswitch_11
    .end sparse-switch

    .line 203
    :pswitch_data_46
    .packed-switch -0x1
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 179
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f04001f

    invoke-virtual {p0, v1}, Lcom/ecommerce/furniture/PaymentsActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0, v7}, Lcom/ecommerce/furniture/PaymentsActivity;->setRequestedOrientation(I)V

    .line 57
    const-string v1, "Payment Page"

    invoke-virtual {p0, v1}, Lcom/ecommerce/furniture/PaymentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "TOTAL_PRICE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 61
    .local v2, "totalPrice":D
    new-instance v0, Lcom/google/android/gms/identity/intents/Address$AddressOptions;

    invoke-direct {v0, v7}, Lcom/google/android/gms/identity/intents/Address$AddressOptions;-><init>(I)V

    .line 63
    .local v0, "options":Lcom/google/android/gms/identity/intents/Address$AddressOptions;
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    const-string v4, "Inducesmile"

    .line 65
    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v5, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    const/4 v6, 0x3

    .line 67
    invoke-virtual {v5, v6}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v5

    .line 68
    invoke-virtual {v5, v7}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v5

    .line 66
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 72
    invoke-direct {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->getWalletFragmentOption()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;->newInstance(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mWalletFragment:Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;

    .line 73
    invoke-direct {p0}, Lcom/ecommerce/furniture/PaymentsActivity;->initializeWalletFragment()V

    .line 75
    sget-object v1, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    iget-object v4, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v4}, Lcom/google/android/gms/wallet/Payments;->isReadyToPay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v4, Lcom/ecommerce/furniture/PaymentsActivity$1;

    invoke-direct {v4, p0}, Lcom/ecommerce/furniture/PaymentsActivity$1;-><init>(Lcom/ecommerce/furniture/PaymentsActivity;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 92
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 184
    iget-object v0, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 185
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 191
    :cond_13
    iget-object v0, p0, Lcom/ecommerce/furniture/PaymentsActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 193
    :cond_18
    return-void
.end method
