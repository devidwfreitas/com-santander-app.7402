.class public Ljsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/novidades/view/NovidadesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/novidades/view/NovidadesActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ljsj;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Ljsj;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/novidades/view/NovidadesActivity;->a(Lcom/santander/app/novidades/view/NovidadesActivity;Z)Z

    .line 87
    const-string v0, "Marketing_TelaDeNovidades_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Ljsj;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-static {v0}, Lcom/santander/app/novidades/view/NovidadesActivity;->d(Lcom/santander/app/novidades/view/NovidadesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Ljsj;->a:Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-static {v1}, Lcom/santander/app/novidades/view/NovidadesActivity;->d(Lcom/santander/app/novidades/view/NovidadesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 89
    return-void
.end method
