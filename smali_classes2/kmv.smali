.class public Lkmv;
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
    .line 99
    iput-object p1, p0, Lkmv;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lkmv;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v0

    iget-object v1, p0, Lkmv;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->a(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Lkni;->a(Landroid/widget/Button;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 103
    return-void
.end method
