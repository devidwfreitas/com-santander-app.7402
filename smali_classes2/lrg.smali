.class public Llrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Llrg;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 545
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 546
    return-void
.end method
