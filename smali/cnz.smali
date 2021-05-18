.class public Lcnz;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcnz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcob;

    invoke-direct {v0}, Lcob;-><init>()V

    iget-object v1, p0, Lcnz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcob;->a(Ljava/lang/String;)V

    return-void
.end method
