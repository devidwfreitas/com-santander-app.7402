.class Llmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Llmn;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Llnm;->b()Llnm;

    move-result-object v0

    .line 282
    new-instance v1, Llmo;

    invoke-direct {v1, p0}, Llmo;-><init>(Llmn;)V

    invoke-virtual {v0, v1}, Llnm;->a(Lllx;)V

    .line 288
    iget-object v1, p0, Llmn;->a:Llmi;

    invoke-virtual {v1}, Llmi;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-select-kinship-tag"

    invoke-virtual {v0, v1, v2}, Llnm;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    return-void
.end method
