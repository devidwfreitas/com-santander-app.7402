.class public Lgsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgsw;

.field final synthetic b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;Lgsw;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lgsu;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    iput-object p2, p0, Lgsu;->a:Lgsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lgsu;->b:Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab1()V

    .line 50
    iget-object v0, p0, Lgsu;->a:Lgsw;

    invoke-interface {v0}, Lgsw;->a()V

    .line 51
    return-void
.end method
