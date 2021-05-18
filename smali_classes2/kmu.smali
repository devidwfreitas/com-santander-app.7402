.class public Lkmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lkmu;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lkmu;->a:Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;->c(Lcom/santander/app/segundaviacomprovantes/presentation/ListarComprovantesActivity;)Lkng;

    move-result-object v0

    invoke-interface {v0}, Lkng;->b()V

    .line 199
    return-void
.end method
