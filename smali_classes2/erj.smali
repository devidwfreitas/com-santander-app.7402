.class Lerj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leri;


# direct methods
.method constructor <init>(Leri;Z)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lerj;->b:Leri;

    iput-boolean p2, p0, Lerj;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lerj;->b:Leri;

    invoke-static {v0}, Leri;->a(Leri;)Lfej;

    move-result-object v0

    iget-boolean v1, p0, Lerj;->a:Z

    invoke-virtual {v0, v1}, Lfej;->a(Z)V

    .line 78
    return-void
.end method
