.class public Lcom/google/android/gms/internal/zzqi;
.super Ljava/lang/Object;


# instance fields
.field private final vl:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavn()Z

    move-result v0

    if-nez v0, :cond_12

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1b

    :cond_12
    const/4 v0, 0x1

    :goto_13
    const-string v1, "This Activity is not supported before platform version 11 (3.0 Honeycomb). Please use FragmentActivity instead."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->vl:Ljava/lang/Object;

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public zzaqq()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->vl:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    return v0
.end method

.method public zzaqr()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->vl:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public zzaqs()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->vl:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method
