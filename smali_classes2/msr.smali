.class public Lmsr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lmsr;->a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmsr;->a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->a(Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 38
    iget-object v0, p0, Lmsr;->a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->c()V

    .line 39
    return-void
.end method
