.class public Lmbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentManager;

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lmbd;->b:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

    iput-object p2, p0, Lmbd;->a:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lmbd;->b:Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;

    iget-object v1, p0, Lmbd;->a:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;->a(Lcom/santander/app/seguros/ui/widgets/ButtonWithDialog;Landroid/support/v4/app/FragmentManager;)V

    .line 76
    return-void
.end method
