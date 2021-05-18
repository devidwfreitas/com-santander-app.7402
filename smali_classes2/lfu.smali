.class Llfu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llft;


# direct methods
.method constructor <init>(Llft;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Llfu;->a:Llft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Llfu;->a:Llft;

    invoke-static {v0}, Llft;->a(Llft;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Llfu;->a:Llft;

    invoke-static {v0}, Llft;->b(Llft;)Llge;

    move-result-object v0

    invoke-interface {v0}, Llge;->a()V

    .line 145
    iget-object v0, p0, Llfu;->a:Llft;

    invoke-virtual {v0}, Llft;->dismiss()V

    .line 146
    return-void
.end method
