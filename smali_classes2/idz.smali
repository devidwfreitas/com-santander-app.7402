.class Lidz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lidy;


# direct methods
.method constructor <init>(Lidy;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lidz;->a:Lidy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 452
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 453
    return-void
.end method
