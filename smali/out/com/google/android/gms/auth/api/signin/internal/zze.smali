.class public Lcom/google/android/gms/auth/api/signin/internal/zze;
.super Ljava/lang/Object;


# static fields
.field static ef:I


# instance fields
.field private eg:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->ef:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return-void
.end method


# virtual methods
.method public zzagc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return v0
.end method

.method public zzba(Z)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->ef:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_8
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return-object p0

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public zzq(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .registers 4

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->ef:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    mul-int/2addr v1, v0

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :goto_8
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return-object p0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8
.end method
