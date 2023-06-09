.class public Lcom/ecommerce/furniture/SplashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SPLASH_DISPLAY_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/ecommerce/furniture/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecommerce/furniture/SplashActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 18
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/ecommerce/furniture/SplashActivity;->SPLASH_DISPLAY_LENGTH:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 22
    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/SplashActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/ecommerce/furniture/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/ecommerce/furniture/SplashActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0, v2}, Lcom/ecommerce/furniture/SplashActivity;->setRequestedOrientation(I)V

    .line 29
    invoke-virtual {p0}, Lcom/ecommerce/furniture/SplashActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_22

    .line 31
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 34
    :cond_22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ecommerce/furniture/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/ecommerce/furniture/SplashActivity$1;-><init>(Lcom/ecommerce/furniture/SplashActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void
.end method
