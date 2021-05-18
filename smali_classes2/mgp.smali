.class public Lmgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/utils/DummyActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/utils/DummyActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lmgp;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lmgp;->a:Lcom/santander/app/seguros/utils/DummyActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/utils/DummyActivity;->a(Lcom/santander/app/seguros/utils/DummyActivity;)Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a(Z)V

    .line 156
    return-void
.end method
