.class Lirn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfoh;

.field final synthetic b:Lirm;


# direct methods
.method constructor <init>(Lirm;Lfoh;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lirn;->b:Lirm;

    iput-object p2, p0, Lirn;->a:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lirv;

    iget-object v1, p0, Lirn;->a:Lfoh;

    invoke-direct {v0, v1}, Lirv;-><init>(Lfoh;)V

    const/4 v1, 0x1

    new-array v1, v1, [Liru;

    const/4 v2, 0x0

    iget-object v3, p0, Lirn;->b:Lirm;

    invoke-static {v3}, Lirm;->a(Lirm;)Liru;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lirv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method
