.class public final Lcom/google/android/gms/internal/zzamx;
.super Lcom/google/android/gms/internal/zzamv;


# static fields
.field public static final bei:Lcom/google/android/gms/internal/zzamx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzamx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzamx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzamx;->bei:Lcom/google/android/gms/internal/zzamx;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamv;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/zzamx;

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/zzamx;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
