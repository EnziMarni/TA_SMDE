<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dokumen;
use App\Models\Draft;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class DraftDocumentController extends Controller
{
    // Menampilkan halaman draft dokumen
    public function index()
    {
        $userName = Auth::user()->name;
        $draftDokumens = Draft::where('created_by', $userName)->get();

        return view('draft-dokumens.index', compact('draftDokumens'));
    }

    public function delete($id)
    {
        $draft = Draft::findOrFail($id);
        $draft->delete();

        return redirect()
            ->route('draft-dokumen')
            ->with('status', 'Dokumen berhasil dihapus dari draft');
    }

    public function unarchive($id)
    {
        $draft = Draft::findOrFail($id);

        // Logging untuk memeriksa data draft
        Log::info('Draft data before move:', ['draft' => $draft->toArray()]);

        // Pindahkan data dari Draft ke Dokumen
        $newDokumen = Dokumen::create([
            'judul_dokumen' => $draft->judul_dokumen,
            'created_by' => $draft->created_by,
            'deskripsi_dokumen' => $draft->deskripsi_dokumen,
            'kategori_dokumen' => $draft->kategori_dokumen,
            'validasi_dokumen' => $draft->validasi_dokumen,
            'tahun_dokumen' => $draft->tahun_dokumen,
            'dokumen_file' => $draft->dokumen_file,
            'dokumen_link' => $draft->dokumen_link,
            'tags' => $draft->tags,
            'view' => $draft->view,
            'status_file' => $draft->status_file, // Pastikan status file diatur dengan benar
        ]);

        // Logging untuk memeriksa data dokumen baru
        Log::info('New Dokumen created:', [
            'dokumen' => $newDokumen->toArray(),
        ]);

        // Hapus data dari tabel draft
        $draft->delete();

        return redirect()
            ->route('list-dokumen-user')
            ->with('status', 'Dokumen berhasil dipindahkan ke list dokumen');
    }

    public function moveToDraft($id)
    {
        $dokumen = Dokumen::find($id);
        if ($dokumen) {
            Draft::create([
                'judul_dokumen' => $dokumen->judul_dokumen,
                'created_by' => $draft->created_by,
                'deskripsi_dokumen' => $dokumen->deskripsi_dokumen,
                'kategori_dokumen' => $dokumen->kategori_dokumen,
                'validasi_dokumen' => $dokumen->validasi_dokumen,
                'tahun_dokumen' => $dokumen->tahun_dokumen,
                'dokumen_file' => $dokumen->dokumen_file,
                'dokumen_link' => $dokumen->dokumen_link,
                'tags' => $dokumen->tags,
                'status' => 'draft',
                'view' => $document->view,
                'status_file' => $draft->status_file,
            ]);

            return redirect()
                ->route('dokumens.index')
                ->with('status', 'Dokumen dipindahkan ke draft');
        } else {
            return redirect()
                ->route('dokumens.index')
                ->with('error', 'Dokumen tidak ditemukan');
        }
    }
}
