.class Ldeb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzbaw;

.field final synthetic b:Ldea;


# direct methods
.method constructor <init>(Ldea;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    iput-object p1, p0, Ldeb;->b:Ldea;

    iput-object p2, p0, Ldeb;->a:Lcom/google/android/gms/internal/zzbaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldeb;->b:Ldea;

    iget-object v1, p0, Ldeb;->a:Lcom/google/android/gms/internal/zzbaw;

    invoke-static {v0, v1}, Ldea;->a(Ldea;Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method
