.class Ldca;
.super Ldcn;


# instance fields
.field final synthetic a:Ldbs;

.field final synthetic b:Lcom/google/android/gms/internal/zzbaw;


# direct methods
.method constructor <init>(Ldbz;Ldcl;Ldbs;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    iput-object p3, p0, Ldca;->a:Ldbs;

    iput-object p4, p0, Ldca;->b:Lcom/google/android/gms/internal/zzbaw;

    invoke-direct {p0, p2}, Ldcn;-><init>(Ldcl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldca;->a:Ldbs;

    iget-object v1, p0, Ldca;->b:Lcom/google/android/gms/internal/zzbaw;

    invoke-static {v0, v1}, Ldbs;->a(Ldbs;Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method
