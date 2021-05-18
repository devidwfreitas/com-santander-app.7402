.class public Lkef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/AporteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/AporteActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkef;->a:Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lkef;->a:Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-static {v0}, Lcom/santander/app/previdencia/presentation/AporteActivity;->a(Lcom/santander/app/previdencia/presentation/AporteActivity;)Lkfn;

    move-result-object v0

    invoke-interface {v0}, Lkfn;->a()V

    .line 84
    return-void
.end method
