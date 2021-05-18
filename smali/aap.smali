.class final Laap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laas;


# direct methods
.method constructor <init>(Laas;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Laap;->a:Laas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Laap;->a:Laas;

    invoke-interface {v0}, Laas;->a()V

    .line 126
    return-void
.end method
