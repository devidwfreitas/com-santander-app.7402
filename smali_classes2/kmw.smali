.class public Lkmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lkmw;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lkmw;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lkmw;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v0

    iget-object v1, p0, Lkmw;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->c(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Lkni;->b(Landroid/widget/Button;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 114
    :cond_0
    return-void
.end method
