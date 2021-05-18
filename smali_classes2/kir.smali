.class Lkir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkip;


# direct methods
.method constructor <init>(Lkip;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lkir;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    const-string v0, "Outros_RecargaDeTelefone_Recarga_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lkir;->a:Lkip;

    invoke-static {v0}, Lkip;->b(Lkip;)V

    .line 170
    return-void
.end method
