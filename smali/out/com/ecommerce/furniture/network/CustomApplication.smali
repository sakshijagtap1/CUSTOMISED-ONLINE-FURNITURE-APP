.class public Lcom/ecommerce/furniture/network/CustomApplication;
.super Landroid/app/Application;
.source "CustomApplication.java"


# instance fields
.field private requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getVolleyRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ecommerce/furniture/network/CustomApplication;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    invoke-virtual {p0}, Lcom/ecommerce/furniture/network/CustomApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecommerce/furniture/network/VolleySingleton;->getInstance(Landroid/content/Context;)Lcom/ecommerce/furniture/network/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecommerce/furniture/network/VolleySingleton;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/ecommerce/furniture/network/CustomApplication;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 15
    return-void
.end method
