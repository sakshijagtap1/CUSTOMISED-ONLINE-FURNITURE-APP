.class Lcom/google/android/gms/internal/zzanp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzanp;->zzb(Lcom/google/android/gms/internal/zzaol;)Lcom/google/android/gms/internal/zzanu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic beD:Lcom/google/android/gms/internal/zzamr;

.field final synthetic beE:Ljava/lang/reflect/Type;

.field final synthetic beF:Lcom/google/android/gms/internal/zzanp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanp;Lcom/google/android/gms/internal/zzamr;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanp$1;->beF:Lcom/google/android/gms/internal/zzanp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzanp$1;->beD:Lcom/google/android/gms/internal/zzamr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzanp$1;->beE:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzczu()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanp$1;->beD:Lcom/google/android/gms/internal/zzamr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanp$1;->beE:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzamr;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
