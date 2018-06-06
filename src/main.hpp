#ifndef _main_hpp_
#define _main_hpp_

/// \class Stuff
/// \brief does nothing
class Stuff {

    /// this is the demo
    /// /tparam T class type
    /// \param base parent class
    /// \param member function of base class
    template<typename T>
    bool something(T* base, uint8_t (T::member)(long)) {
        return false;
    }
};

#endif
