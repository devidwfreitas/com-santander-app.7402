.class Lcom/ca/org/acra/CrashReportFinder$1;
.super Ljava/lang/Object;
.source "CrashReportFinder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/org/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/org/acra/CrashReportFinder;


# direct methods
.method constructor <init>(Lcom/ca/org/acra/CrashReportFinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/org/acra/CrashReportFinder;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ca/org/acra/CrashReportFinder$1;->this$0:Lcom/ca/org/acra/CrashReportFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, ".stacktrace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
