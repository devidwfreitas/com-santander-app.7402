.class public Lmsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lmsq;->a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmsq;->a:Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/ComprovanteTransferGoldenActivity;->finish()V

    .line 31
    return-void
.end method
