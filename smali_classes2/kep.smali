.class public Lkep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkep;->a:Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lkep;->a:Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;

    invoke-static {v0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->a(Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;)Lkfu;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lkfu;->a(Landroid/widget/AdapterView;I)V

    .line 58
    return-void
.end method
